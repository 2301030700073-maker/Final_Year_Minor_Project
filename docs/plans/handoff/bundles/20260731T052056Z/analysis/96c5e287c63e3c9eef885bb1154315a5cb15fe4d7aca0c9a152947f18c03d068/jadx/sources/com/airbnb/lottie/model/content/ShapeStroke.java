package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.StrokeContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShapeStroke implements ContentModel {
    public final LineCapType capType;
    public final AnimatableTextFrame color;
    public final boolean hidden;
    public final LineJoinType joinType;
    public final ArrayList lineDashPattern;
    public final float miterLimit;
    public final AnimatableFloatValue offset;
    public final AnimatableTextFrame opacity;
    public final AnimatableFloatValue width;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.airbnb.lottie.model.content.ShapeStroke$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType;
        public static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType;

        static {
            int[] iArr = new int[LineJoinType.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType = iArr;
            try {
                iArr[LineJoinType.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType[LineJoinType.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType[LineJoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LineCapType.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType = iArr2;
            try {
                iArr2[LineCapType.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType[LineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType[LineCapType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LineCapType {
        private static final /* synthetic */ LineCapType[] $VALUES;
        public static final LineCapType BUTT;
        public static final LineCapType ROUND;
        public static final LineCapType UNKNOWN;

        static {
            LineCapType lineCapType = new LineCapType("BUTT", 0);
            BUTT = lineCapType;
            LineCapType lineCapType2 = new LineCapType("ROUND", 1);
            ROUND = lineCapType2;
            LineCapType lineCapType3 = new LineCapType("UNKNOWN", 2);
            UNKNOWN = lineCapType3;
            $VALUES = new LineCapType[]{lineCapType, lineCapType2, lineCapType3};
        }

        public static LineCapType valueOf(String str) {
            return (LineCapType) Enum.valueOf(LineCapType.class, str);
        }

        public static LineCapType[] values() {
            return (LineCapType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LineJoinType {
        private static final /* synthetic */ LineJoinType[] $VALUES;
        public static final LineJoinType BEVEL;
        public static final LineJoinType MITER;
        public static final LineJoinType ROUND;

        static {
            LineJoinType lineJoinType = new LineJoinType("MITER", 0);
            MITER = lineJoinType;
            LineJoinType lineJoinType2 = new LineJoinType("ROUND", 1);
            ROUND = lineJoinType2;
            LineJoinType lineJoinType3 = new LineJoinType("BEVEL", 2);
            BEVEL = lineJoinType3;
            $VALUES = new LineJoinType[]{lineJoinType, lineJoinType2, lineJoinType3};
        }

        public static LineJoinType valueOf(String str) {
            return (LineJoinType) Enum.valueOf(LineJoinType.class, str);
        }

        public static LineJoinType[] values() {
            return (LineJoinType[]) $VALUES.clone();
        }
    }

    public ShapeStroke(String str, AnimatableFloatValue animatableFloatValue, ArrayList arrayList, AnimatableTextFrame animatableTextFrame, AnimatableTextFrame animatableTextFrame2, AnimatableFloatValue animatableFloatValue2, LineCapType lineCapType, LineJoinType lineJoinType, float f, boolean z) {
        this.offset = animatableFloatValue;
        this.lineDashPattern = arrayList;
        this.color = animatableTextFrame;
        this.opacity = animatableTextFrame2;
        this.width = animatableFloatValue2;
        this.capType = lineCapType;
        this.joinType = lineJoinType;
        this.miterLimit = f;
        this.hidden = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new StrokeContent(lottieDrawable, baseLayer, this);
    }
}
