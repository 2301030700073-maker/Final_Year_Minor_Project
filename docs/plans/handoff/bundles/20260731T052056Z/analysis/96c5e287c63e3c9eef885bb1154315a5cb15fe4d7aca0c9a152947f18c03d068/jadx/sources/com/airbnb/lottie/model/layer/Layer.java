package com.airbnb.lottie.model.layer;

import coil3.memory.MemoryCacheService;
import coil3.svg.internal.AndroidSvg;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.LBlendMode;
import java.util.List;
import java.util.Locale;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Layer {
    public final LBlendMode blendMode;
    public final MemoryCacheService blurEffect;
    public final LottieComposition composition;
    public final Request.Builder dropShadowEffect;
    public final boolean hidden;
    public final List inOutKeyframes;
    public final long layerId;
    public final String layerName;
    public final LayerType layerType;
    public final List masks;
    public final MatteType matteType;
    public final long parentId;
    public final float preCompHeight;
    public final float preCompWidth;
    public final String refId;
    public final List shapes;
    public final int solidColor;
    public final int solidHeight;
    public final int solidWidth;
    public final float startFrame;
    public final AnimatableTextFrame text;
    public final AndroidSvg textProperties;
    public final AnimatableFloatValue timeRemapping;
    public final float timeStretch;
    public final AnimatableTransform transform;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LayerType {
        private static final /* synthetic */ LayerType[] $VALUES;
        public static final LayerType IMAGE;
        public static final LayerType NULL;
        public static final LayerType PRE_COMP;
        public static final LayerType SHAPE;
        public static final LayerType SOLID;
        public static final LayerType TEXT;
        public static final LayerType UNKNOWN;

        static {
            LayerType layerType = new LayerType("PRE_COMP", 0);
            PRE_COMP = layerType;
            LayerType layerType2 = new LayerType("SOLID", 1);
            SOLID = layerType2;
            LayerType layerType3 = new LayerType("IMAGE", 2);
            IMAGE = layerType3;
            LayerType layerType4 = new LayerType("NULL", 3);
            NULL = layerType4;
            LayerType layerType5 = new LayerType("SHAPE", 4);
            SHAPE = layerType5;
            LayerType layerType6 = new LayerType("TEXT", 5);
            TEXT = layerType6;
            LayerType layerType7 = new LayerType("UNKNOWN", 6);
            UNKNOWN = layerType7;
            $VALUES = new LayerType[]{layerType, layerType2, layerType3, layerType4, layerType5, layerType6, layerType7};
        }

        public static LayerType valueOf(String str) {
            return (LayerType) Enum.valueOf(LayerType.class, str);
        }

        public static LayerType[] values() {
            return (LayerType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MatteType {
        private static final /* synthetic */ MatteType[] $VALUES;
        public static final MatteType ADD;
        public static final MatteType INVERT;
        public static final MatteType LUMA;
        public static final MatteType LUMA_INVERTED;
        public static final MatteType NONE;
        public static final MatteType UNKNOWN;

        static {
            MatteType matteType = new MatteType("NONE", 0);
            NONE = matteType;
            MatteType matteType2 = new MatteType("ADD", 1);
            ADD = matteType2;
            MatteType matteType3 = new MatteType("INVERT", 2);
            INVERT = matteType3;
            MatteType matteType4 = new MatteType("LUMA", 3);
            LUMA = matteType4;
            MatteType matteType5 = new MatteType("LUMA_INVERTED", 4);
            LUMA_INVERTED = matteType5;
            MatteType matteType6 = new MatteType("UNKNOWN", 5);
            UNKNOWN = matteType6;
            $VALUES = new MatteType[]{matteType, matteType2, matteType3, matteType4, matteType5, matteType6};
        }

        public static MatteType valueOf(String str) {
            return (MatteType) Enum.valueOf(MatteType.class, str);
        }

        public static MatteType[] values() {
            return (MatteType[]) $VALUES.clone();
        }
    }

    public Layer(List list, LottieComposition lottieComposition, String str, long j, LayerType layerType, long j2, String str2, List list2, AnimatableTransform animatableTransform, int i, int i2, int i3, float f, float f2, float f3, float f4, AnimatableTextFrame animatableTextFrame, AndroidSvg androidSvg, List list3, MatteType matteType, AnimatableFloatValue animatableFloatValue, boolean z, MemoryCacheService memoryCacheService, Request.Builder builder, LBlendMode lBlendMode) {
        this.shapes = list;
        this.composition = lottieComposition;
        this.layerName = str;
        this.layerId = j;
        this.layerType = layerType;
        this.parentId = j2;
        this.refId = str2;
        this.masks = list2;
        this.transform = animatableTransform;
        this.solidWidth = i;
        this.solidHeight = i2;
        this.solidColor = i3;
        this.timeStretch = f;
        this.startFrame = f2;
        this.preCompWidth = f3;
        this.preCompHeight = f4;
        this.text = animatableTextFrame;
        this.textProperties = androidSvg;
        this.inOutKeyframes = list3;
        this.matteType = matteType;
        this.timeRemapping = animatableFloatValue;
        this.hidden = z;
        this.blurEffect = memoryCacheService;
        this.dropShadowEffect = builder;
        this.blendMode = lBlendMode;
    }

    public final String toString(String str) {
        int i;
        StringBuilder sb = new StringBuilder(str);
        sb.append(this.layerName);
        sb.append("\n");
        long j = this.parentId;
        LottieComposition lottieComposition = this.composition;
        Layer layer = (Layer) lottieComposition.layerMap.get(j);
        if (layer != null) {
            sb.append("\t\tParents: ");
            sb.append(layer.layerName);
            for (Layer layer2 = (Layer) lottieComposition.layerMap.get(layer.parentId); layer2 != null; layer2 = (Layer) lottieComposition.layerMap.get(layer2.parentId)) {
                sb.append("->");
                sb.append(layer2.layerName);
            }
            sb.append(str);
            sb.append("\n");
        }
        List list = this.masks;
        if (!list.isEmpty()) {
            sb.append(str);
            sb.append("\tMasks: ");
            sb.append(list.size());
            sb.append("\n");
        }
        int i2 = this.solidWidth;
        if (i2 != 0 && (i = this.solidHeight) != 0) {
            sb.append(str);
            sb.append("\tBackground: ");
            sb.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(i2), Integer.valueOf(i), Integer.valueOf(this.solidColor)));
        }
        List list2 = this.shapes;
        if (!list2.isEmpty()) {
            sb.append(str);
            sb.append("\tShapes:\n");
            for (Object obj : list2) {
                sb.append(str);
                sb.append("\t\t");
                sb.append(obj);
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public final String toString() {
        return toString("");
    }
}
