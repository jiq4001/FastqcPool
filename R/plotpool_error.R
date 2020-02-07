plotpool_error <- function(dataframe, col = NULL, panel = NULL){
  if(is.null(col)){
    p <- dataframe %>%
      ggplot(aes(x = as.numeric(`#Base`), y = Mean))+
      geom_point(position = "jitter")+
      geom_errorbar(aes(ymin = `Lower Quartile`, ymax = `Upper Quartile`),position = "jitter")+
      scale_x_continuous()+
      scale_y_continuous(labels = scales::percent)+
      theme(plot.title = element_text(hjust = 0.5))+
      labs(x = "# Base", title = "Per Base Sequence Quality Errorbar Plot")+
      guides(color = guide_legend(title="Sample ID"))
  }
  else{
    p <- p <- dataframe %>%
      ggplot2::ggplot(aes(x = as.numeric(`#Base`), y = Mean, color = factor(get(col, pos = -1))))+
      geom_point(position = "jitter")+
      geom_errorbar(aes(ymin = `Lower Quartile`, ymax = `Upper Quartile`),position = "jitter")+
      scale_x_continuous()+
      scale_y_continuous(labels = scales::percent)+
      theme(plot.title = element_text(hjust = 0.5))+
      labs(x = "# Base", title = "Per Base Sequence Quality Errorbar Plot")+
      guides(color = guide_legend(title="Sample ID"))
  }
  if(is.null(panel)){
    return(p)
  }
  else{
    p+facet_wrap(.~get(panel))
  }
}
