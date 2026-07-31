package net.thunderbird.feature.search.legacy.api;

import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import net.thunderbird.feature.search.legacy.LocalMessageSearch$$ExternalSyntheticLambda0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable
/* loaded from: classes.dex */
public final class SearchAttribute {
    public static final /* synthetic */ SearchAttribute[] $VALUES;
    public static final Lazy $cachedSerializer$delegate;
    public static final SearchAttribute CONTAINS;
    public static final Companion Companion;
    public static final SearchAttribute EQUALS;
    public static final SearchAttribute NOT_EQUALS;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return (KSerializer) SearchAttribute.$cachedSerializer$delegate.getValue();
        }
    }

    static {
        SearchAttribute searchAttribute = new SearchAttribute("CONTAINS", 0);
        CONTAINS = searchAttribute;
        SearchAttribute searchAttribute2 = new SearchAttribute("EQUALS", 1);
        EQUALS = searchAttribute2;
        SearchAttribute searchAttribute3 = new SearchAttribute("NOT_EQUALS", 2);
        NOT_EQUALS = searchAttribute3;
        $VALUES = new SearchAttribute[]{searchAttribute, searchAttribute2, searchAttribute3};
        Companion = new Companion();
        $cachedSerializer$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LocalMessageSearch$$ExternalSyntheticLambda0(24));
    }

    public static SearchAttribute valueOf(String str) {
        return (SearchAttribute) Enum.valueOf(SearchAttribute.class, str);
    }

    public static SearchAttribute[] values() {
        return (SearchAttribute[]) $VALUES.clone();
    }
}
