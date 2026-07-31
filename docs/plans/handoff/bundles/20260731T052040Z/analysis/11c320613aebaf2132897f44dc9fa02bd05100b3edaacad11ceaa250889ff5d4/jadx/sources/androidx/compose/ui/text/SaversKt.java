package androidx.compose.ui.text;

import androidx.cardview.widget.CardView;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.Saver;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SaversKt {
    public static final CardView.AnonymousClass1 AnnotationRangeListSaver;
    public static final CardView.AnonymousClass1 AnnotationRangeSaver;
    public static final CardView.AnonymousClass1 BaselineShiftSaver;
    public static final CardView.AnonymousClass1 ClickableSaver;
    public static final SaversKt$NonNullValueClassSaver$1 ColorSaver;
    public static final CardView.AnonymousClass1 FontStyleSaver;
    public static final CardView.AnonymousClass1 FontSynthesisSaver;
    public static final CardView.AnonymousClass1 FontWeightSaver;
    public static final SaversKt$NonNullValueClassSaver$1 HyphensSaver;
    public static final SaversKt$NonNullValueClassSaver$1 LineHeightStyleAlignmentSaver;
    public static final SaversKt$NonNullValueClassSaver$1 LineHeightStyleModeSaver;
    public static final CardView.AnonymousClass1 LineHeightStyleSaver;
    public static final SaversKt$NonNullValueClassSaver$1 LineHeightStyleTrimSaver;
    public static final CardView.AnonymousClass1 LinkSaver;
    public static final CardView.AnonymousClass1 LocaleListSaver;
    public static final CardView.AnonymousClass1 LocaleSaver;
    public static final SaversKt$NonNullValueClassSaver$1 OffsetSaver;
    public static final CardView.AnonymousClass1 ParagraphStyleSaver;
    public static final CardView.AnonymousClass1 ShadowSaver;
    public static final CardView.AnonymousClass1 SpanStyleSaver;
    public static final SaversKt$NonNullValueClassSaver$1 TextAlignSaver;
    public static final CardView.AnonymousClass1 TextDecorationSaver;
    public static final SaversKt$NonNullValueClassSaver$1 TextDirectionSaver;
    public static final CardView.AnonymousClass1 TextGeometricTransformSaver;
    public static final CardView.AnonymousClass1 TextIndentSaver;
    public static final CardView.AnonymousClass1 TextLinkStylesSaver;
    public static final SaversKt$NonNullValueClassSaver$1 TextUnitSaver;
    public static final SaversKt$NonNullValueClassSaver$1 TextUnitTypeSaver;
    public static final CardView.AnonymousClass1 UrlAnnotationSaver;
    public static final CardView.AnonymousClass1 VerbatimTtsAnnotationSaver;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i = 21;
        int i2 = 13;
        new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(0), new SaversKt$$ExternalSyntheticLambda2(i), 0 == true ? 1 : 0);
        SaversKt$$ExternalSyntheticLambda0 saversKt$$ExternalSyntheticLambda0 = new SaversKt$$ExternalSyntheticLambda0(i);
        int i3 = 3;
        AnnotationRangeListSaver = new CardView.AnonymousClass1(i2, saversKt$$ExternalSyntheticLambda0, new SaversKt$$ExternalSyntheticLambda4(i3), 0 == true ? 1 : 0);
        SaversKt$$ExternalSyntheticLambda3 saversKt$$ExternalSyntheticLambda3 = new SaversKt$$ExternalSyntheticLambda3(i3);
        int i4 = 14;
        AnnotationRangeSaver = new CardView.AnonymousClass1(i2, saversKt$$ExternalSyntheticLambda3, new SaversKt$$ExternalSyntheticLambda4(i4), 0 == true ? 1 : 0);
        int i5 = 10;
        int i6 = 16;
        VerbatimTtsAnnotationSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i5), new SaversKt$$ExternalSyntheticLambda4(i6), 0 == true ? 1 : 0);
        int i7 = 12;
        int i8 = 17;
        UrlAnnotationSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i7), new SaversKt$$ExternalSyntheticLambda4(i8), 0 == true ? 1 : 0);
        int i9 = 19;
        LinkSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(i9), new SaversKt$$ExternalSyntheticLambda2(0 == true ? 1 : 0), 0 == true ? 1 : 0);
        ClickableSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(0 == true ? 1 : 0), new SaversKt$$ExternalSyntheticLambda4(0 == true ? 1 : 0), 0 == true ? 1 : 0);
        int i10 = 11;
        int i11 = 18;
        ParagraphStyleSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i10), new SaversKt$$ExternalSyntheticLambda4(i11), 0 == true ? 1 : 0);
        SpanStyleSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i2), new SaversKt$$ExternalSyntheticLambda4(i9), 0 == true ? 1 : 0);
        int i12 = 20;
        TextLinkStylesSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i4), new SaversKt$$ExternalSyntheticLambda2(i12), 0 == true ? 1 : 0);
        int i13 = 15;
        int i14 = 22;
        TextDecorationSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(i13), new SaversKt$$ExternalSyntheticLambda2(i14), 0 == true ? 1 : 0);
        int i15 = 23;
        TextGeometricTransformSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(i6), new SaversKt$$ExternalSyntheticLambda2(i15), 0 == true ? 1 : 0);
        SaversKt$$ExternalSyntheticLambda0 saversKt$$ExternalSyntheticLambda02 = new SaversKt$$ExternalSyntheticLambda0(i8);
        int i16 = 24;
        TextIndentSaver = new CardView.AnonymousClass1(i2, saversKt$$ExternalSyntheticLambda02, new SaversKt$$ExternalSyntheticLambda2(i16), 0 == true ? 1 : 0);
        SaversKt$$ExternalSyntheticLambda0 saversKt$$ExternalSyntheticLambda03 = new SaversKt$$ExternalSyntheticLambda0(i11);
        int i17 = 25;
        FontWeightSaver = new CardView.AnonymousClass1(i2, saversKt$$ExternalSyntheticLambda03, new SaversKt$$ExternalSyntheticLambda2(i17), 0 == true ? 1 : 0);
        SaversKt$$ExternalSyntheticLambda0 saversKt$$ExternalSyntheticLambda04 = new SaversKt$$ExternalSyntheticLambda0(i12);
        int i18 = 26;
        BaselineShiftSaver = new CardView.AnonymousClass1(i2, saversKt$$ExternalSyntheticLambda04, new SaversKt$$ExternalSyntheticLambda2(i18), 0 == true ? 1 : 0);
        SaversKt$$ExternalSyntheticLambda0 saversKt$$ExternalSyntheticLambda05 = new SaversKt$$ExternalSyntheticLambda0(i14);
        int i19 = 27;
        new CardView.AnonymousClass1(i2, saversKt$$ExternalSyntheticLambda05, new SaversKt$$ExternalSyntheticLambda2(i19), 0 == true ? 1 : 0);
        SaversKt$$ExternalSyntheticLambda0 saversKt$$ExternalSyntheticLambda06 = new SaversKt$$ExternalSyntheticLambda0(i15);
        int i20 = 28;
        ShadowSaver = new CardView.AnonymousClass1(i2, saversKt$$ExternalSyntheticLambda06, new SaversKt$$ExternalSyntheticLambda2(i20), 0 == true ? 1 : 0);
        ColorSaver = new SaversKt$NonNullValueClassSaver$1(SaversKt$ColorSaver$1.INSTANCE, SaversKt$ColorSaver$2.INSTANCE);
        SaversKt$$ExternalSyntheticLambda0 saversKt$$ExternalSyntheticLambda07 = new SaversKt$$ExternalSyntheticLambda0(i16);
        int i21 = 29;
        TextAlignSaver = new SaversKt$NonNullValueClassSaver$1(saversKt$$ExternalSyntheticLambda07, new SaversKt$$ExternalSyntheticLambda2(i21));
        TextDirectionSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda0(i17), new SaversKt$$ExternalSyntheticLambda4(1));
        HyphensSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda0(i18), new SaversKt$$ExternalSyntheticLambda4(2));
        FontStyleSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(i19), new SaversKt$$ExternalSyntheticLambda4(4), 0 == true ? 1 : 0);
        FontSynthesisSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(i20), new SaversKt$$ExternalSyntheticLambda4(5), 0 == true ? 1 : 0);
        TextUnitSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda0(i21), new SaversKt$$ExternalSyntheticLambda4(6));
        TextUnitTypeSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(1), new SaversKt$$ExternalSyntheticLambda4(7));
        OffsetSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(2), new SaversKt$$ExternalSyntheticLambda4(8));
        LocaleListSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(4), new SaversKt$$ExternalSyntheticLambda4(9), 0 == true ? 1 : 0);
        LocaleSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(5), new SaversKt$$ExternalSyntheticLambda4(i5), 0 == true ? 1 : 0);
        LineHeightStyleSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(6), new SaversKt$$ExternalSyntheticLambda4(i10), 0 == true ? 1 : 0);
        LineHeightStyleAlignmentSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(7), new SaversKt$$ExternalSyntheticLambda4(i7));
        LineHeightStyleTrimSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(8), new SaversKt$$ExternalSyntheticLambda4(i2));
        LineHeightStyleModeSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(9), new SaversKt$$ExternalSyntheticLambda4(i13));
    }

    public static final Object save(Object obj, Saver saver, SaveableHolder saveableHolder) {
        Object save;
        return (obj == null || (save = saver.save(saveableHolder, obj)) == null) ? Boolean.FALSE : save;
    }
}
