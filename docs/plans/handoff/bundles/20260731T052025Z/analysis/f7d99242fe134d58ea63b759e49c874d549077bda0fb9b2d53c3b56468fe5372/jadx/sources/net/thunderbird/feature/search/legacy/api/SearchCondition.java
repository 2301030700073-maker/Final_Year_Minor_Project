package net.thunderbird.feature.search.legacy.api;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import net.thunderbird.feature.search.legacy.LocalMessageSearch$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable
/* loaded from: classes.dex */
public final class SearchCondition {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final SearchAttribute attribute;
    public final SearchField field;
    public final String value;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return SearchCondition$$serializer.INSTANCE;
        }
    }

    static {
        LocalMessageSearch$$ExternalSyntheticLambda0 localMessageSearch$$ExternalSyntheticLambda0 = new LocalMessageSearch$$ExternalSyntheticLambda0(25);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{ResultKt.lazy(lazyThreadSafetyMode, localMessageSearch$$ExternalSyntheticLambda0), ResultKt.lazy(lazyThreadSafetyMode, new LocalMessageSearch$$ExternalSyntheticLambda0(26)), null};
    }

    public /* synthetic */ SearchCondition(int i, SearchField searchField, SearchAttribute searchAttribute, String str) {
        if (7 != (i & 7)) {
            TuplesKt.throwMissingFieldException(i, 7, SearchCondition$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.field = searchField;
        this.attribute = searchAttribute;
        this.value = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchCondition)) {
            return false;
        }
        SearchCondition searchCondition = (SearchCondition) obj;
        return Intrinsics.areEqual(this.field, searchCondition.field) && this.attribute == searchCondition.attribute && Intrinsics.areEqual(this.value, searchCondition.value);
    }

    public final int hashCode() {
        return this.value.hashCode() + ((this.attribute.hashCode() + (this.field.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SearchCondition(field=");
        sb.append(this.field);
        sb.append(", attribute=");
        sb.append(this.attribute);
        sb.append(", value=");
        return CameraDevices$CC.m(sb, this.value, ")");
    }

    public SearchCondition(SearchField searchField, SearchAttribute searchAttribute, String str) {
        searchField.getClass();
        str.getClass();
        this.field = searchField;
        this.attribute = searchAttribute;
        this.value = str;
    }
}
