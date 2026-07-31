package org.wikimedia.testkitchen.context;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class PageData {
    public static final Companion Companion = new Companion();
    public String contentLanguage;
    public Integer id;
    public Integer namespaceId;
    public String namespaceName;
    public Long revisionId;
    public String title;
    public String wikidataItemQid;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return PageData$$serializer.INSTANCE;
        }
    }
}
