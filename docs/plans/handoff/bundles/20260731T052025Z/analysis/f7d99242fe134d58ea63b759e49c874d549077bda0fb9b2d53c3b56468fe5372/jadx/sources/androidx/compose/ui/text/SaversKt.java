package androidx.compose.ui.text;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.platform.WeakCache;
import app.k9mail.K9KoinModuleKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SaversKt {
    public static final WeakCache AnnotatedStringSaver;
    public static final WeakCache AnnotationRangeListSaver;
    public static final WeakCache AnnotationRangeSaver;
    public static final WeakCache BaselineShiftSaver;
    public static final WeakCache ClickableSaver;
    public static final WeakCache FontStyleSaver;
    public static final WeakCache FontSynthesisSaver;
    public static final WeakCache FontWeightSaver;
    public static final SaversKt$NonNullValueClassSaver$1 HyphensSaver;
    public static final WeakCache LineHeightStyleSaver;
    public static final WeakCache LinkSaver;
    public static final WeakCache LocaleListSaver;
    public static final WeakCache LocaleSaver;
    public static final WeakCache ParagraphStyleSaver;
    public static final WeakCache ShadowSaver;
    public static final WeakCache SpanStyleSaver;
    public static final SaversKt$NonNullValueClassSaver$1 TextAlignSaver;
    public static final WeakCache TextDecorationSaver;
    public static final SaversKt$NonNullValueClassSaver$1 TextDirectionSaver;
    public static final WeakCache TextGeometricTransformSaver;
    public static final WeakCache TextIndentSaver;
    public static final WeakCache TextLinkStylesSaver;
    public static final WeakCache TextRangeSaver;
    public static final SaversKt$NonNullValueClassSaver$1 TextUnitSaver;
    public static final SaversKt$NonNullValueClassSaver$1 TextUnitTypeSaver;
    public static final WeakCache UrlAnnotationSaver;
    public static final WeakCache VerbatimTtsAnnotationSaver;
    public static final SaversKt$NonNullValueClassSaver$1 ColorSaver = new SaversKt$NonNullValueClassSaver$1(SaversKt$ColorSaver$1.INSTANCE, SaversKt$ColorSaver$2.INSTANCE);
    public static final SaversKt$NonNullValueClassSaver$1 OffsetSaver = new SaversKt$NonNullValueClassSaver$1(new K9KoinModuleKt$$ExternalSyntheticLambda2(4), new SaversKt$$ExternalSyntheticLambda2(16));
    public static final SaversKt$NonNullValueClassSaver$1 LineHeightStyleAlignmentSaver = new SaversKt$NonNullValueClassSaver$1(new K9KoinModuleKt$$ExternalSyntheticLambda2(9), new SaversKt$$ExternalSyntheticLambda2(21));
    public static final SaversKt$NonNullValueClassSaver$1 LineHeightStyleTrimSaver = new SaversKt$NonNullValueClassSaver$1(new K9KoinModuleKt$$ExternalSyntheticLambda2(10), new SaversKt$$ExternalSyntheticLambda2(22));
    public static final SaversKt$NonNullValueClassSaver$1 LineHeightStyleModeSaver = new SaversKt$NonNullValueClassSaver$1(new K9KoinModuleKt$$ExternalSyntheticLambda2(11), new SaversKt$$ExternalSyntheticLambda2(24));

    static {
        int i = 0;
        int i2 = 29;
        int i3 = 3;
        AnnotatedStringSaver = new WeakCache(i3, new SaversKt$$ExternalSyntheticLambda0(i), new TextKt$$ExternalSyntheticLambda1(i2));
        AnnotationRangeListSaver = new WeakCache(i3, new SaversKt$$ExternalSyntheticLambda0(22), new SaversKt$$ExternalSyntheticLambda2(11));
        int i4 = 5;
        int i5 = 23;
        AnnotationRangeSaver = new WeakCache(i3, new K9KoinModuleKt$$ExternalSyntheticLambda2(i4), new SaversKt$$ExternalSyntheticLambda2(i5));
        int i6 = 12;
        int i7 = 25;
        VerbatimTtsAnnotationSaver = new WeakCache(i3, new K9KoinModuleKt$$ExternalSyntheticLambda2(i6), new SaversKt$$ExternalSyntheticLambda2(i7));
        int i8 = 26;
        UrlAnnotationSaver = new WeakCache(i3, new K9KoinModuleKt$$ExternalSyntheticLambda2(14), new SaversKt$$ExternalSyntheticLambda2(i8));
        LinkSaver = new WeakCache(i3, new SaversKt$$ExternalSyntheticLambda0(20), new SaversKt$$ExternalSyntheticLambda2(i));
        int i9 = 2;
        int i10 = 19;
        ClickableSaver = new WeakCache(i3, new K9KoinModuleKt$$ExternalSyntheticLambda2(i9), new SaversKt$$ExternalSyntheticLambda2(i10));
        int i11 = 13;
        int i12 = 27;
        ParagraphStyleSaver = new WeakCache(i3, new K9KoinModuleKt$$ExternalSyntheticLambda2(i11), new SaversKt$$ExternalSyntheticLambda2(i12));
        int i13 = 28;
        SpanStyleSaver = new WeakCache(i3, new K9KoinModuleKt$$ExternalSyntheticLambda2(15), new SaversKt$$ExternalSyntheticLambda2(i13));
        int i14 = 16;
        TextLinkStylesSaver = new WeakCache(i3, new K9KoinModuleKt$$ExternalSyntheticLambda2(i14), new TextKt$$ExternalSyntheticLambda1(i13));
        int i15 = 1;
        TextDecorationSaver = new WeakCache(i3, new SaversKt$$ExternalSyntheticLambda0(i14), new SaversKt$$ExternalSyntheticLambda2(i15));
        int i16 = 17;
        TextGeometricTransformSaver = new WeakCache(i3, new SaversKt$$ExternalSyntheticLambda0(i16), new SaversKt$$ExternalSyntheticLambda2(i9));
        TextIndentSaver = new WeakCache(i3, new SaversKt$$ExternalSyntheticLambda0(18), new SaversKt$$ExternalSyntheticLambda2(i3));
        FontWeightSaver = new WeakCache(i3, new SaversKt$$ExternalSyntheticLambda0(i10), new SaversKt$$ExternalSyntheticLambda2(4));
        BaselineShiftSaver = new WeakCache(i3, new SaversKt$$ExternalSyntheticLambda0(21), new SaversKt$$ExternalSyntheticLambda2(i4));
        TextRangeSaver = new WeakCache(i3, new SaversKt$$ExternalSyntheticLambda0(i5), new SaversKt$$ExternalSyntheticLambda2(6));
        ShadowSaver = new WeakCache(i3, new SaversKt$$ExternalSyntheticLambda0(24), new SaversKt$$ExternalSyntheticLambda2(7));
        TextAlignSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda0(i7), new SaversKt$$ExternalSyntheticLambda2(8));
        TextDirectionSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda0(i8), new SaversKt$$ExternalSyntheticLambda2(9));
        HyphensSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda0(i12), new SaversKt$$ExternalSyntheticLambda2(10));
        FontStyleSaver = new WeakCache(i3, new SaversKt$$ExternalSyntheticLambda0(i13), new SaversKt$$ExternalSyntheticLambda2(i6));
        FontSynthesisSaver = new WeakCache(i3, new SaversKt$$ExternalSyntheticLambda0(i2), new SaversKt$$ExternalSyntheticLambda2(i11));
        TextUnitSaver = new SaversKt$NonNullValueClassSaver$1(new K9KoinModuleKt$$ExternalSyntheticLambda2(i15), new SaversKt$$ExternalSyntheticLambda2(14));
        TextUnitTypeSaver = new SaversKt$NonNullValueClassSaver$1(new K9KoinModuleKt$$ExternalSyntheticLambda2(i3), new SaversKt$$ExternalSyntheticLambda2(15));
        LocaleListSaver = new WeakCache(i3, new K9KoinModuleKt$$ExternalSyntheticLambda2(6), new SaversKt$$ExternalSyntheticLambda2(i16));
        LocaleSaver = new WeakCache(i3, new K9KoinModuleKt$$ExternalSyntheticLambda2(7), new SaversKt$$ExternalSyntheticLambda2(18));
        LineHeightStyleSaver = new WeakCache(i3, new K9KoinModuleKt$$ExternalSyntheticLambda2(8), new SaversKt$$ExternalSyntheticLambda2(20));
    }

    public static final Object save(Object obj, Saver saver, SaveableHolder saveableHolder) {
        Object save;
        return (obj == null || (save = saver.save(saveableHolder, obj)) == null) ? Boolean.FALSE : save;
    }
}
