package org.schabi.newpipe.extractor;

import java.io.Serializable;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.schabi.newpipe.extractor.stream.Description;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class MetaInfo implements Serializable {
    private Description content;
    private String title = "";
    private List<URL> urls = new ArrayList();
    private List<String> urlTexts = new ArrayList();

    public final void addUrl(URL url) {
        this.urls.add(url);
    }

    public final void addUrlText(String str) {
        this.urlTexts.add(str);
    }

    public final Description getContent() {
        return this.content;
    }

    public final String getTitle() {
        return this.title;
    }

    public final List getUrlTexts() {
        return this.urlTexts;
    }

    public final List getUrls() {
        return this.urls;
    }

    public final void setContent(Description description) {
        this.content = description;
    }

    public final void setTitle(String str) {
        this.title = str;
    }
}
