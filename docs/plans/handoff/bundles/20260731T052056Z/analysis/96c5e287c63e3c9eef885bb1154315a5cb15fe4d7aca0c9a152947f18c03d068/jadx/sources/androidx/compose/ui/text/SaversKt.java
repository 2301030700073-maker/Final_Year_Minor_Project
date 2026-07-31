package androidx.compose.ui.text;

import androidx.cardview.widget.CardView;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.Saver;
import androidx.paging.PagingSource$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AnnotationType.values().length];
            try {
                iArr[AnnotationType.Paragraph.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnnotationType.Span.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnnotationType.VerbatimTts.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AnnotationType.Url.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AnnotationType.Link.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AnnotationType.Clickable.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[AnnotationType.String.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        int i = 0;
        int i2 = 12;
        new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(i), new SaversKt$$ExternalSyntheticLambda2(11));
        int i3 = 22;
        AnnotationRangeListSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(28), new SaversKt$$ExternalSyntheticLambda2(i3));
        int i4 = 10;
        int i5 = 5;
        AnnotationRangeSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i4), new PagingSource$$ExternalSyntheticLambda0(i5));
        int i6 = 17;
        int i7 = 7;
        VerbatimTtsAnnotationSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i6), new PagingSource$$ExternalSyntheticLambda0(i7));
        int i8 = 19;
        int i9 = 8;
        UrlAnnotationSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i8), new PagingSource$$ExternalSyntheticLambda0(i9));
        LinkSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(26), new SaversKt$$ExternalSyntheticLambda2(i));
        int i10 = 1;
        ClickableSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i), new PagingSource$$ExternalSyntheticLambda0(i10));
        int i11 = 18;
        ParagraphStyleSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i11), new PagingSource$$ExternalSyntheticLambda0(9));
        int i12 = 20;
        SpanStyleSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i12), new PagingSource$$ExternalSyntheticLambda0(i4));
        int i13 = 21;
        TextLinkStylesSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i13), new SaversKt$$ExternalSyntheticLambda2(i4));
        TextDecorationSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(i3), new SaversKt$$ExternalSyntheticLambda2(i2));
        int i14 = 23;
        TextGeometricTransformSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(i14), new SaversKt$$ExternalSyntheticLambda2(13));
        int i15 = 24;
        TextIndentSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(i15), new SaversKt$$ExternalSyntheticLambda2(14));
        int i16 = 25;
        FontWeightSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(i16), new SaversKt$$ExternalSyntheticLambda2(15));
        BaselineShiftSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(27), new SaversKt$$ExternalSyntheticLambda2(16));
        new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda0(29), new SaversKt$$ExternalSyntheticLambda2(i6));
        ShadowSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i10), new SaversKt$$ExternalSyntheticLambda2(i11));
        ColorSaver = new SaversKt$NonNullValueClassSaver$1(SaversKt$ColorSaver$1.INSTANCE, SaversKt$ColorSaver$2.INSTANCE);
        TextAlignSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(2), new SaversKt$$ExternalSyntheticLambda2(i8));
        TextDirectionSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(3), new SaversKt$$ExternalSyntheticLambda2(i12));
        HyphensSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(4), new SaversKt$$ExternalSyntheticLambda2(i13));
        FontStyleSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i5), new SaversKt$$ExternalSyntheticLambda2(i14));
        FontSynthesisSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(6), new SaversKt$$ExternalSyntheticLambda2(i15));
        TextUnitSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(i7), new SaversKt$$ExternalSyntheticLambda2(i16));
        TextUnitTypeSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(i9), new SaversKt$$ExternalSyntheticLambda2(26));
        OffsetSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(9), new SaversKt$$ExternalSyntheticLambda2(27));
        LocaleListSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(11), new SaversKt$$ExternalSyntheticLambda2(28));
        LocaleSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(i2), new SaversKt$$ExternalSyntheticLambda2(29));
        LineHeightStyleSaver = new CardView.AnonymousClass1(i2, new SaversKt$$ExternalSyntheticLambda3(13), new PagingSource$$ExternalSyntheticLambda0(2));
        LineHeightStyleAlignmentSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(14), new PagingSource$$ExternalSyntheticLambda0(3));
        LineHeightStyleTrimSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(15), new PagingSource$$ExternalSyntheticLambda0(4));
        LineHeightStyleModeSaver = new SaversKt$NonNullValueClassSaver$1(new SaversKt$$ExternalSyntheticLambda3(16), new PagingSource$$ExternalSyntheticLambda0(6));
    }

    public static final Object save(Object obj, Saver saver, SaveableHolder saveableHolder) {
        Object save;
        return (obj == null || (save = saver.save(saveableHolder, obj)) == null) ? Boolean.FALSE : save;
    }
}
