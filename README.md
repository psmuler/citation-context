[![DOI](https://zenodo.org/badge/989118572.svg)](https://zenodo.org/badge/latestdoi/989118572)

# Citation Context

Citation context analyisis is a subfield of bibliometrics that focuses on the text information surrounding citations instead of the statistical nature of other bibliographic metrics. This includes, though not limited to, the study of the detection and classification of the citation([Poncela-CasasnovasEtAl_LargescaleAnalysisMicrolevel_2019](https://doi.org/10.1038/s41562-019-0585-7), ), and the adjusted citation for traditional bibliography metrics ([chenMeasuringCitationContext2022](https://doi.org/10.1002/asi.24569) ) and citation networks.

Citation context can also help text summarization [30, 25] and thesaurus construction [24].

# Main
## citation classification
Citation contexts are claffified from several perspectives: ([hernandez-alvarezCitationFunctionPolarity2017](https://doi.org/10.1017/S1351324916000346)):
-  Polarity (Sentiment): negative (weakness of cited approach, unfavorable contrast/comparison), neutral (contrast/comparison of goals of methods, results and/or methods; neutral description of cited work or insufficient textual evidence for these categories or unlisted citation function) or positive (Author uses cited work as starting point, Author uses tools/algorithm/data; Author adapts or modifies tools/algorithm/data; This citation is positive regarding approach or problem addressed; author’s work and cited work are similar, compatible/support each other.)
-  Function: use, comparison, critique, background
-  Influence: purfanctory, significant

[Athar_SentimentAnalysisScientific_2014](https://doi.org/undefined) demonstrated that information about sentiment is lost when analyses only employ the sentence that contains the citation.

The optimal context window to infer is three sentences including the sentence that the citation occur. 
([RitchieEtAl_ComparingCitationContexts_2008](https://doi.org/10.1145/1458082.1458113), [hernandez-alvarezCitationFunctionPolarity2017](https://doi.org/10.1017/S1351324916000346))

## Dataset
machine aided
- SCITE: [Nicholson_SCITESmartCitation_2021](https://doi.org/10.1162/qss_a_00146)

# Contribution statement
This is a part of the series of co-authored scoping review in GIANT, a research project that aims to develop a new approach to disseminate scientific knowledge. The goal is to create a platform that allows researchers to share their work in a more efficient and effective way. 

The project leverages one of the most widely used reference management tools Zotero, and integrates doi to provide a co-authored scoping review interface. The reviews cites a lot of literature as a typical literature review does, but the interesting thing is that the review itself immediately obtain DOI so that other literature or scoping reviews can cite them. The reviews structure itself into hierarchical, yet interlaced knowledge of science.

# Citation
The above DOI corresponds to one of the versioned release as [published to Zenodo](https://zenodo.org/records/15497889), where you will find all earlier releases. To cite `citation-context` independent of version, use https://doi.org/10.5281/zenodo.15497889, which will always redirect to the latest release.
```bibtex
@misc{doi:10.5281/zenodo.15497889,
  author       = {Chiaki Miura},
  title        = {citation-context},
  month        = may,
  year         = 2025,
  publisher    = {Zenodo},
  version      = {v0.1.0},
  doi          = {10.5281/zenodo.15497889},
  url          = {https://doi.org/10.5281/zenodo.15497889}
}
```

# Acknowledgement
The project is supported by ACT-X  Japan Science and Technology Agency, Grant Number JPMJAX24CP, Japan