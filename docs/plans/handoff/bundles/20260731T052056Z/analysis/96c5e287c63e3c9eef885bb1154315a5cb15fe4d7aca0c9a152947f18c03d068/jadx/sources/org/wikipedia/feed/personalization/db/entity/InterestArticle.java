package org.wikipedia.feed.personalization.db.entity;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class InterestArticle {
    public final String apiTitle;
    public final String description;
    public final String displayTitle;
    public final String lang;
    public final Namespace namespace;
    public final String thumbUrl;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(7)), null, null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return InterestArticle$$serializer.INSTANCE;
        }
    }

    public InterestArticle(String str, String str2, Namespace namespace, String str3, String str4, String str5) {
        str.getClass();
        str2.getClass();
        namespace.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        this.apiTitle = str;
        this.lang = str2;
        this.namespace = namespace;
        this.displayTitle = str3;
        this.description = str4;
        this.thumbUrl = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InterestArticle)) {
            return false;
        }
        InterestArticle interestArticle = (InterestArticle) obj;
        return Intrinsics.areEqual(this.apiTitle, interestArticle.apiTitle) && Intrinsics.areEqual(this.lang, interestArticle.lang) && this.namespace == interestArticle.namespace && Intrinsics.areEqual(this.displayTitle, interestArticle.displayTitle) && Intrinsics.areEqual(this.description, interestArticle.description) && Intrinsics.areEqual(this.thumbUrl, interestArticle.thumbUrl);
    }

    public final int hashCode() {
        return this.thumbUrl.hashCode() + Animation.CC.m(Animation.CC.m((this.namespace.hashCode() + Animation.CC.m(this.apiTitle.hashCode() * 31, 31, this.lang)) * 31, 31, this.displayTitle), 31, this.description);
    }

    public final String toString() {
        StringBuilder m352m = Modifier.CC.m352m("InterestArticle(apiTitle=", this.apiTitle, ", lang=", this.lang, ", namespace=");
        m352m.append(this.namespace);
        m352m.append(", displayTitle=");
        m352m.append(this.displayTitle);
        m352m.append(", description=");
        m352m.append(this.description);
        m352m.append(", thumbUrl=");
        m352m.append(this.thumbUrl);
        m352m.append(")");
        return m352m.toString();
    }

    public /* synthetic */ InterestArticle(int i, String str, String str2, Namespace namespace, String str3, String str4, String str5) {
        if (63 != (i & 63)) {
            TuplesKt.throwMissingFieldException(i, 63, InterestArticle$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.apiTitle = str;
        this.lang = str2;
        this.namespace = namespace;
        this.displayTitle = str3;
        this.description = str4;
        this.thumbUrl = str5;
    }
}
