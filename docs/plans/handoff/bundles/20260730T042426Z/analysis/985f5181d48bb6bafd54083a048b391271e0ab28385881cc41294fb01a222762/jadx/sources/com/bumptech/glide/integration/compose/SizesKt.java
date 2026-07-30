package com.bumptech.glide.integration.compose;

import androidx.compose.ui.unit.Constraints;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.integration.ktx.FlowsKt;
import com.bumptech.glide.integration.ktx.Size;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Sizes.kt */
/* loaded from: classes.dex */
public abstract class SizesKt {
    public static final Size overrideSize(RequestBuilder requestBuilder) {
        Intrinsics.checkNotNullParameter(requestBuilder, "<this>");
        if (isOverrideSizeSet(requestBuilder)) {
            return new Size(requestBuilder.getOverrideWidth(), requestBuilder.getOverrideHeight());
        }
        return null;
    }

    public static final boolean isOverrideSizeSet(RequestBuilder requestBuilder) {
        Intrinsics.checkNotNullParameter(requestBuilder, "<this>");
        return FlowsKt.isValidGlideDimension(requestBuilder.getOverrideWidth()) && FlowsKt.isValidGlideDimension(requestBuilder.getOverrideHeight());
    }

    /* renamed from: inferredGlideSize-BRTryo0, reason: not valid java name */
    public static final Size m2598inferredGlideSizeBRTryo0(long j) {
        int m2397getMaxWidthimpl = Constraints.m2393getHasBoundedWidthimpl(j) ? Constraints.m2397getMaxWidthimpl(j) : Integer.MIN_VALUE;
        int m2396getMaxHeightimpl = Constraints.m2392getHasBoundedHeightimpl(j) ? Constraints.m2396getMaxHeightimpl(j) : Integer.MIN_VALUE;
        if (FlowsKt.isValidGlideDimension(m2397getMaxWidthimpl) && FlowsKt.isValidGlideDimension(m2396getMaxHeightimpl)) {
            return new Size(m2397getMaxWidthimpl, m2396getMaxHeightimpl);
        }
        return null;
    }
}
