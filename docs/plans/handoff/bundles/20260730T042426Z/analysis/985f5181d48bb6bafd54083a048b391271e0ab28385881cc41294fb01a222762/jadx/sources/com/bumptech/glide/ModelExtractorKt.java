package com.bumptech.glide;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: ModelExtractor.kt */
/* loaded from: classes.dex */
public abstract class ModelExtractorKt {
    public static final Object getInternalModel(RequestBuilder requestBuilder) {
        Intrinsics.checkNotNullParameter(requestBuilder, "<this>");
        return requestBuilder.getModel();
    }
}
