package org.wikipedia.edit.richtext;

import android.content.Context;
import android.graphics.Typeface;
import android.util.TypedValue;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SyntaxRuleStyle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SyntaxRuleStyle[] $VALUES;
    public static final SyntaxRuleStyle BOLD;
    public static final SyntaxRuleStyle CODE;
    public static final SyntaxRuleStyle EXTERNAL_LINK;
    public static final SyntaxRuleStyle HEADING_LARGE;
    public static final SyntaxRuleStyle HEADING_MEDIUM;
    public static final SyntaxRuleStyle HEADING_SMALL;
    public static final SyntaxRuleStyle INTERNAL_LINK;
    public static final SyntaxRuleStyle ITALIC;
    public static final SyntaxRuleStyle PRE_TEMPLATE;
    public static final SyntaxRuleStyle REF;
    public static final SyntaxRuleStyle SEARCH_MATCHES;
    public static final SyntaxRuleStyle SEARCH_MATCH_SELECTED;
    public static final SyntaxRuleStyle STRIKETHROUGH;
    public static final SyntaxRuleStyle SUBSCRIPT;
    public static final SyntaxRuleStyle SUPERSCRIPT;
    public static final SyntaxRuleStyle TEMPLATE;
    public static final SyntaxRuleStyle TEXT_LARGE;
    public static final SyntaxRuleStyle TEXT_SMALL;
    public static final SyntaxRuleStyle UNDERLINE;

    static {
        SyntaxRuleStyle syntaxRuleStyle = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.PRE_TEMPLATE
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                TypedValue typedValue = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.success_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue != null) {
                    return new ColorSpanEx(typedValue.data, 0, i, syntaxRule);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130970065");
                return null;
            }
        };
        PRE_TEMPLATE = syntaxRuleStyle;
        SyntaxRuleStyle syntaxRuleStyle2 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.TEMPLATE
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                TypedValue typedValue = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.placeholder_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue != null) {
                    return new ColorSpanEx(typedValue.data, 0, i, syntaxRule);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969851");
                return null;
            }
        };
        TEMPLATE = syntaxRuleStyle2;
        SyntaxRuleStyle syntaxRuleStyle3 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.INTERNAL_LINK
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                TypedValue typedValue = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.progressive_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue != null) {
                    return new ColorSpanEx(typedValue.data, 0, i, syntaxRule);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
                return null;
            }
        };
        INTERNAL_LINK = syntaxRuleStyle3;
        SyntaxRuleStyle syntaxRuleStyle4 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.EXTERNAL_LINK
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                TypedValue typedValue = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.progressive_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue != null) {
                    return new ColorSpanEx(typedValue.data, 0, i, syntaxRule);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
                return null;
            }
        };
        EXTERNAL_LINK = syntaxRuleStyle4;
        SyntaxRuleStyle syntaxRuleStyle5 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.REF
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                TypedValue typedValue = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.success_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue != null) {
                    return new ColorSpanEx(typedValue.data, 0, i, syntaxRule);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130970065");
                return null;
            }
        };
        REF = syntaxRuleStyle5;
        SyntaxRuleStyle syntaxRuleStyle6 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.BOLD
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                StyleSpanEx styleSpanEx = new StyleSpanEx(1);
                styleSpanEx.start = i;
                styleSpanEx.syntaxRule = syntaxRule;
                return styleSpanEx;
            }
        };
        BOLD = syntaxRuleStyle6;
        SyntaxRuleStyle syntaxRuleStyle7 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.ITALIC
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                StyleSpanEx styleSpanEx = new StyleSpanEx(2);
                styleSpanEx.start = i;
                styleSpanEx.syntaxRule = syntaxRule;
                return styleSpanEx;
            }
        };
        ITALIC = syntaxRuleStyle7;
        SyntaxRuleStyle syntaxRuleStyle8 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.UNDERLINE
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                UnderlineSpanEx underlineSpanEx = new UnderlineSpanEx();
                underlineSpanEx.start = i;
                underlineSpanEx.syntaxRule = syntaxRule;
                return underlineSpanEx;
            }
        };
        UNDERLINE = syntaxRuleStyle8;
        SyntaxRuleStyle syntaxRuleStyle9 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.STRIKETHROUGH
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                StrikethroughSpanEx strikethroughSpanEx = new StrikethroughSpanEx();
                strikethroughSpanEx.start = i;
                strikethroughSpanEx.syntaxRule = syntaxRule;
                return strikethroughSpanEx;
            }
        };
        STRIKETHROUGH = syntaxRuleStyle9;
        SyntaxRuleStyle syntaxRuleStyle10 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.TEXT_LARGE
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                RelativeSizeSpanEx relativeSizeSpanEx = new RelativeSizeSpanEx(1.2f);
                relativeSizeSpanEx.start = i;
                relativeSizeSpanEx.syntaxRule = syntaxRule;
                return relativeSizeSpanEx;
            }
        };
        TEXT_LARGE = syntaxRuleStyle10;
        SyntaxRuleStyle syntaxRuleStyle11 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.TEXT_SMALL
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                RelativeSizeSpanEx relativeSizeSpanEx = new RelativeSizeSpanEx(0.8f);
                relativeSizeSpanEx.start = i;
                relativeSizeSpanEx.syntaxRule = syntaxRule;
                return relativeSizeSpanEx;
            }
        };
        TEXT_SMALL = syntaxRuleStyle11;
        SyntaxRuleStyle syntaxRuleStyle12 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.CODE
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                Typeface.MONOSPACE.getClass();
                return new TypefaceSpanEx(i, syntaxRule);
            }
        };
        CODE = syntaxRuleStyle12;
        SyntaxRuleStyle syntaxRuleStyle13 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.SUPERSCRIPT
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                SubscriptSpanEx subscriptSpanEx = new SubscriptSpanEx(1);
                subscriptSpanEx.start = i;
                subscriptSpanEx.syntaxRule = syntaxRule;
                return subscriptSpanEx;
            }
        };
        SUPERSCRIPT = syntaxRuleStyle13;
        SyntaxRuleStyle syntaxRuleStyle14 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.SUBSCRIPT
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                SubscriptSpanEx subscriptSpanEx = new SubscriptSpanEx(0);
                subscriptSpanEx.start = i;
                subscriptSpanEx.syntaxRule = syntaxRule;
                return subscriptSpanEx;
            }
        };
        SUBSCRIPT = syntaxRuleStyle14;
        SyntaxRuleStyle syntaxRuleStyle15 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.HEADING_LARGE
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                RelativeSizeSpanEx relativeSizeSpanEx = new RelativeSizeSpanEx(1.3f);
                relativeSizeSpanEx.start = i;
                relativeSizeSpanEx.syntaxRule = syntaxRule;
                return relativeSizeSpanEx;
            }
        };
        HEADING_LARGE = syntaxRuleStyle15;
        SyntaxRuleStyle syntaxRuleStyle16 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.HEADING_MEDIUM
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                RelativeSizeSpanEx relativeSizeSpanEx = new RelativeSizeSpanEx(1.2f);
                relativeSizeSpanEx.start = i;
                relativeSizeSpanEx.syntaxRule = syntaxRule;
                return relativeSizeSpanEx;
            }
        };
        HEADING_MEDIUM = syntaxRuleStyle16;
        SyntaxRuleStyle syntaxRuleStyle17 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.HEADING_SMALL
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                RelativeSizeSpanEx relativeSizeSpanEx = new RelativeSizeSpanEx(1.1f);
                relativeSizeSpanEx.start = i;
                relativeSizeSpanEx.syntaxRule = syntaxRule;
                return relativeSizeSpanEx;
            }
        };
        HEADING_SMALL = syntaxRuleStyle17;
        SyntaxRuleStyle syntaxRuleStyle18 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.SEARCH_MATCHES
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                TypedValue typedValue = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.highlight_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue != null) {
                    return new ColorSpanEx(-16777216, typedValue.data, i, syntaxRule);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969274");
                return null;
            }
        };
        SEARCH_MATCHES = syntaxRuleStyle18;
        SyntaxRuleStyle syntaxRuleStyle19 = new SyntaxRuleStyle() { // from class: org.wikipedia.edit.richtext.SyntaxRuleStyle.SEARCH_MATCH_SELECTED
            @Override // org.wikipedia.edit.richtext.SyntaxRuleStyle
            public final SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule) {
                TypedValue typedValue = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.focus_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue != null) {
                    return new ColorSpanEx(-16777216, typedValue.data, i, syntaxRule);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969222");
                return null;
            }
        };
        SEARCH_MATCH_SELECTED = syntaxRuleStyle19;
        SyntaxRuleStyle[] syntaxRuleStyleArr = {syntaxRuleStyle, syntaxRuleStyle2, syntaxRuleStyle3, syntaxRuleStyle4, syntaxRuleStyle5, syntaxRuleStyle6, syntaxRuleStyle7, syntaxRuleStyle8, syntaxRuleStyle9, syntaxRuleStyle10, syntaxRuleStyle11, syntaxRuleStyle12, syntaxRuleStyle13, syntaxRuleStyle14, syntaxRuleStyle15, syntaxRuleStyle16, syntaxRuleStyle17, syntaxRuleStyle18, syntaxRuleStyle19};
        $VALUES = syntaxRuleStyleArr;
        $ENTRIES = new EnumEntriesList(syntaxRuleStyleArr);
    }

    public static SyntaxRuleStyle valueOf(String str) {
        return (SyntaxRuleStyle) Enum.valueOf(SyntaxRuleStyle.class, str);
    }

    public static SyntaxRuleStyle[] values() {
        return (SyntaxRuleStyle[]) $VALUES.clone();
    }

    public abstract SpanExtents createSpan(Context context, int i, SyntaxRule syntaxRule);
}
