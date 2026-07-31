package com.skydoves.balloon.vectortext;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class VectorTextViewParams {
    public final Integer compoundDrawablePadding;
    public final Integer compoundDrawablePaddingRes;
    public final CharSequence contentDescription;
    public final Integer drawableBottomRes;
    public final Integer drawableEndRes;
    public final Integer drawableStartRes;
    public final Integer drawableTopRes;
    public final Integer heightRes;
    public final Integer iconHeight;
    public final Integer iconWidth;
    public boolean isRtlLayout;
    public final Integer squareSizeRes;
    public final Integer tintColor;
    public final Integer widthRes;

    public VectorTextViewParams(Integer num, Integer num2, Integer num3, Integer num4, String str, Integer num5, Integer num6, Integer num7, Integer num8, Integer num9, Integer num10, Integer num11, Integer num12, int i) {
        num = (i & 1) != 0 ? null : num;
        Integer num13 = (i & 2) != 0 ? null : num2;
        Integer num14 = (i & 4) != 0 ? null : num3;
        Integer num15 = (i & 8) != 0 ? null : num4;
        String str2 = (i & 512) != 0 ? "" : str;
        Integer num16 = (i & 1024) != 0 ? null : num5;
        Integer num17 = (i & 2048) != 0 ? null : num6;
        Integer num18 = (i & 4096) != 0 ? null : num7;
        Integer num19 = (i & 8192) != 0 ? null : num8;
        Integer num20 = (32768 & i) != 0 ? null : num10;
        Integer num21 = (65536 & i) != 0 ? null : num11;
        Integer num22 = (i & 131072) == 0 ? num12 : null;
        str2.getClass();
        this.drawableStartRes = num;
        this.drawableEndRes = num13;
        this.drawableBottomRes = num14;
        this.drawableTopRes = num15;
        this.isRtlLayout = false;
        this.contentDescription = str2;
        this.compoundDrawablePadding = num16;
        this.iconWidth = num17;
        this.iconHeight = num18;
        this.compoundDrawablePaddingRes = num19;
        this.tintColor = num9;
        this.widthRes = num20;
        this.heightRes = num21;
        this.squareSizeRes = num22;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VectorTextViewParams)) {
            return false;
        }
        VectorTextViewParams vectorTextViewParams = (VectorTextViewParams) obj;
        return Intrinsics.areEqual(this.drawableStartRes, vectorTextViewParams.drawableStartRes) && Intrinsics.areEqual(this.drawableEndRes, vectorTextViewParams.drawableEndRes) && Intrinsics.areEqual(this.drawableBottomRes, vectorTextViewParams.drawableBottomRes) && Intrinsics.areEqual(this.drawableTopRes, vectorTextViewParams.drawableTopRes) && this.isRtlLayout == vectorTextViewParams.isRtlLayout && this.contentDescription.equals(vectorTextViewParams.contentDescription) && Intrinsics.areEqual(this.compoundDrawablePadding, vectorTextViewParams.compoundDrawablePadding) && Intrinsics.areEqual(this.iconWidth, vectorTextViewParams.iconWidth) && Intrinsics.areEqual(this.iconHeight, vectorTextViewParams.iconHeight) && Intrinsics.areEqual(this.compoundDrawablePaddingRes, vectorTextViewParams.compoundDrawablePaddingRes) && Intrinsics.areEqual(this.tintColor, vectorTextViewParams.tintColor) && Intrinsics.areEqual(this.widthRes, vectorTextViewParams.widthRes) && Intrinsics.areEqual(this.heightRes, vectorTextViewParams.heightRes) && Intrinsics.areEqual(this.squareSizeRes, vectorTextViewParams.squareSizeRes);
    }

    public final int hashCode() {
        Integer num = this.drawableStartRes;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.drawableEndRes;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.drawableBottomRes;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.drawableTopRes;
        int hashCode4 = (this.contentDescription.hashCode() + ((((hashCode3 + (num4 == null ? 0 : num4.hashCode())) * 28629151) + (this.isRtlLayout ? 1231 : 1237)) * 31)) * 31;
        Integer num5 = this.compoundDrawablePadding;
        int hashCode5 = (hashCode4 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.iconWidth;
        int hashCode6 = (hashCode5 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.iconHeight;
        int hashCode7 = (hashCode6 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.compoundDrawablePaddingRes;
        int hashCode8 = (hashCode7 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Integer num9 = this.tintColor;
        int hashCode9 = (hashCode8 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.widthRes;
        int hashCode10 = (hashCode9 + (num10 == null ? 0 : num10.hashCode())) * 31;
        Integer num11 = this.heightRes;
        int hashCode11 = (hashCode10 + (num11 == null ? 0 : num11.hashCode())) * 31;
        Integer num12 = this.squareSizeRes;
        return hashCode11 + (num12 != null ? num12.hashCode() : 0);
    }

    public final String toString() {
        return "VectorTextViewParams(drawableStartRes=" + this.drawableStartRes + ", drawableEndRes=" + this.drawableEndRes + ", drawableBottomRes=" + this.drawableBottomRes + ", drawableTopRes=" + this.drawableTopRes + ", drawableStart=null, drawableEnd=null, drawableBottom=null, drawableTop=null, isRtlLayout=" + this.isRtlLayout + ", contentDescription=" + ((Object) this.contentDescription) + ", compoundDrawablePadding=" + this.compoundDrawablePadding + ", iconWidth=" + this.iconWidth + ", iconHeight=" + this.iconHeight + ", compoundDrawablePaddingRes=" + this.compoundDrawablePaddingRes + ", tintColor=" + this.tintColor + ", widthRes=" + this.widthRes + ", heightRes=" + this.heightRes + ", squareSizeRes=" + this.squareSizeRes + ")";
    }
}
