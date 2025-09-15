import pandas as pd

data_viral_load = pd.read_csv('sweep_metadata.csv')
#need to make sure dates are treated as dates. 
data_viral_load['sample_collection_datetime'] = pd.to_datetime(data_viral_load['sample_collection_datetime'])

import plotly.express as px

fig = px.line(data_viral_load, x='sample_collection_datetime', y='viral_load')

fig.update_layout(yaxis_title='Viral load (gc/ml)',
                  xaxis_title='')
fig.update_layout(margin=dict(b=0, t=10))

fig.update_traces(mode="markers+lines", #show markers and lines simultaneously
                  hovertemplate=None) #drop default hover template

fig.update_layout(hovermode="x unified") #use date focused hover template


from jinja2 import Template
output_html_path="draft_dashboard.html"
input_template_path = "dashboard_template_pha4ge.html"

plotly_jinja_data = {"title":"draft dash",
					 "introText": "Here's the intro section.",
					 "plot":fig.to_html(full_html=False,
                                        config={'displaylogo': False, 'displayModeBar': False})} # remove the plotly logo and toolbar


with open(output_html_path, "w", encoding="utf-8") as output_file:
    with open(input_template_path) as template_file:
        j2_template = Template(template_file.read())
        output_file.write(j2_template.render(plotly_jinja_data))