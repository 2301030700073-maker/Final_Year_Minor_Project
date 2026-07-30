package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.Density;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;

/* compiled from: MultiParagraphIntrinsics.kt */
/* loaded from: classes.dex */
public final class MultiParagraphIntrinsics implements ParagraphIntrinsics {
    private final AnnotatedString annotatedString;
    private final List infoList;
    private final Lazy maxIntrinsicWidth$delegate;
    private final Lazy minIntrinsicWidth$delegate;
    private final List placeholders;

    public MultiParagraphIntrinsics(AnnotatedString annotatedString, TextStyle textStyle, List list, Density density, FontFamily.Resolver resolver) {
        AnnotatedString substringWithoutParagraphStyles;
        List localPlaceholders;
        this.annotatedString = annotatedString;
        this.placeholders = list;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.minIntrinsicWidth$delegate = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$minIntrinsicWidth$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                Object obj;
                ParagraphIntrinsics intrinsics;
                List infoList$ui_text_release = MultiParagraphIntrinsics.this.getInfoList$ui_text_release();
                if (infoList$ui_text_release.isEmpty()) {
                    obj = null;
                } else {
                    Object obj2 = infoList$ui_text_release.get(0);
                    float minIntrinsicWidth = ((ParagraphIntrinsicInfo) obj2).getIntrinsics().getMinIntrinsicWidth();
                    int lastIndex = CollectionsKt.getLastIndex(infoList$ui_text_release);
                    int i = 1;
                    if (1 <= lastIndex) {
                        while (true) {
                            Object obj3 = infoList$ui_text_release.get(i);
                            float minIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj3).getIntrinsics().getMinIntrinsicWidth();
                            if (Float.compare(minIntrinsicWidth, minIntrinsicWidth2) < 0) {
                                obj2 = obj3;
                                minIntrinsicWidth = minIntrinsicWidth2;
                            }
                            if (i == lastIndex) {
                                break;
                            }
                            i++;
                        }
                    }
                    obj = obj2;
                }
                ParagraphIntrinsicInfo paragraphIntrinsicInfo = (ParagraphIntrinsicInfo) obj;
                return Float.valueOf((paragraphIntrinsicInfo == null || (intrinsics = paragraphIntrinsicInfo.getIntrinsics()) == null) ? 0.0f : intrinsics.getMinIntrinsicWidth());
            }
        });
        this.maxIntrinsicWidth$delegate = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$maxIntrinsicWidth$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                Object obj;
                ParagraphIntrinsics intrinsics;
                List infoList$ui_text_release = MultiParagraphIntrinsics.this.getInfoList$ui_text_release();
                if (infoList$ui_text_release.isEmpty()) {
                    obj = null;
                } else {
                    Object obj2 = infoList$ui_text_release.get(0);
                    float maxIntrinsicWidth = ((ParagraphIntrinsicInfo) obj2).getIntrinsics().getMaxIntrinsicWidth();
                    int lastIndex = CollectionsKt.getLastIndex(infoList$ui_text_release);
                    int i = 1;
                    if (1 <= lastIndex) {
                        while (true) {
                            Object obj3 = infoList$ui_text_release.get(i);
                            float maxIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj3).getIntrinsics().getMaxIntrinsicWidth();
                            if (Float.compare(maxIntrinsicWidth, maxIntrinsicWidth2) < 0) {
                                obj2 = obj3;
                                maxIntrinsicWidth = maxIntrinsicWidth2;
                            }
                            if (i == lastIndex) {
                                break;
                            }
                            i++;
                        }
                    }
                    obj = obj2;
                }
                ParagraphIntrinsicInfo paragraphIntrinsicInfo = (ParagraphIntrinsicInfo) obj;
                return Float.valueOf((paragraphIntrinsicInfo == null || (intrinsics = paragraphIntrinsicInfo.getIntrinsics()) == null) ? 0.0f : intrinsics.getMaxIntrinsicWidth());
            }
        });
        ParagraphStyle paragraphStyle = textStyle.toParagraphStyle();
        List normalizedParagraphStyles = AnnotatedStringKt.normalizedParagraphStyles(annotatedString, paragraphStyle);
        ArrayList arrayList = new ArrayList(normalizedParagraphStyles.size());
        int size = normalizedParagraphStyles.size();
        for (int i = 0; i < size; i++) {
            AnnotatedString.Range range = (AnnotatedString.Range) normalizedParagraphStyles.get(i);
            substringWithoutParagraphStyles = AnnotatedStringKt.substringWithoutParagraphStyles(annotatedString, range.getStart(), range.getEnd());
            ParagraphStyle resolveTextDirection = resolveTextDirection((ParagraphStyle) range.getItem(), paragraphStyle);
            String text = substringWithoutParagraphStyles.getText();
            TextStyle merge = textStyle.merge(resolveTextDirection);
            List spanStyles = substringWithoutParagraphStyles.getSpanStyles();
            localPlaceholders = MultiParagraphIntrinsicsKt.getLocalPlaceholders(getPlaceholders(), range.getStart(), range.getEnd());
            arrayList.add(new ParagraphIntrinsicInfo(ParagraphIntrinsicsKt.ParagraphIntrinsics(text, merge, spanStyles, localPlaceholders, density, resolver), range.getStart(), range.getEnd()));
        }
        this.infoList = arrayList;
    }

    public final AnnotatedString getAnnotatedString() {
        return this.annotatedString;
    }

    public final List getPlaceholders() {
        return this.placeholders;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float getMinIntrinsicWidth() {
        return ((Number) this.minIntrinsicWidth$delegate.getValue()).floatValue();
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float getMaxIntrinsicWidth() {
        return ((Number) this.maxIntrinsicWidth$delegate.getValue()).floatValue();
    }

    public final List getInfoList$ui_text_release() {
        return this.infoList;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public boolean getHasStaleResolvedFonts() {
        List list = this.infoList;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((ParagraphIntrinsicInfo) list.get(i)).getIntrinsics().getHasStaleResolvedFonts()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ParagraphStyle resolveTextDirection(ParagraphStyle paragraphStyle, ParagraphStyle paragraphStyle2) {
        ParagraphStyle m2073copyykzQM6k;
        if (!TextDirection.m2358equalsimpl0(paragraphStyle.m2078getTextDirections_7Xco(), TextDirection.Companion.m2367getUnspecifieds_7Xco())) {
            return paragraphStyle;
        }
        m2073copyykzQM6k = paragraphStyle.m2073copyykzQM6k((r22 & 1) != 0 ? paragraphStyle.textAlign : 0, (r22 & 2) != 0 ? paragraphStyle.textDirection : paragraphStyle2.m2078getTextDirections_7Xco(), (r22 & 4) != 0 ? paragraphStyle.lineHeight : 0L, (r22 & 8) != 0 ? paragraphStyle.textIndent : null, (r22 & 16) != 0 ? paragraphStyle.platformStyle : null, (r22 & 32) != 0 ? paragraphStyle.lineHeightStyle : null, (r22 & 64) != 0 ? paragraphStyle.lineBreak : 0, (r22 & 128) != 0 ? paragraphStyle.hyphens : 0, (r22 & 256) != 0 ? paragraphStyle.textMotion : null);
        return m2073copyykzQM6k;
    }
}
