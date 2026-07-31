package org.wikipedia.page;

import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Page {
    public final String displayTitle;
    public final boolean isArticle;
    public final boolean isMainPage;
    public final PageProperties pageProperties;
    public List sections = EmptyList.INSTANCE;
    public final PageTitle title;

    public Page(PageTitle pageTitle, PageProperties pageProperties) {
        boolean z;
        this.title = pageTitle;
        this.pageProperties = pageProperties;
        this.displayTitle = pageProperties.displayTitle;
        boolean z2 = pageProperties.isMainPage;
        this.isMainPage = z2;
        if (!z2) {
            Namespace namespace = pageProperties.namespace;
            namespace.getClass();
            if (namespace == Namespace.MAIN) {
                z = true;
                this.isArticle = z;
            }
        }
        z = false;
        this.isArticle = z;
    }
}
