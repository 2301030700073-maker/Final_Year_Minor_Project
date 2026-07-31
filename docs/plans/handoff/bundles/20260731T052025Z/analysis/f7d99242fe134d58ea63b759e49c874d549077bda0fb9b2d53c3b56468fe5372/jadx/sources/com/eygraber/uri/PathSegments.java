package com.eygraber.uri;

import androidx.compose.ui.Modifier;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.RandomAccess;
import kotlin.collections.AbstractList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PathSegments extends AbstractList implements RandomAccess {
    public static final PathSegments EMPTY = new PathSegments(0, null);
    public final String[] segments;
    public final int size;

    public PathSegments(int i, String[] strArr) {
        this.segments = strArr;
        this.size = i;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof String) {
            return super.contains((String) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        if (i >= getSize()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, getSize(), "Index ", " should be less than "));
            return null;
        }
        String[] strArr = this.segments;
        if (strArr != null) {
            return strArr[i];
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
        return null;
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        return this.size;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof String) {
            return super.indexOf((String) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof String) {
            return super.lastIndexOf((String) obj);
        }
        return -1;
    }
}
