package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;
import coil3.memory.MemoryCacheService;
import coil3.svg.internal.AndroidSvg;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonUtf8Reader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import java.util.ArrayList;
import java.util.Collections;
import kotlin.text.UStringsKt;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LayerParser {
    public static final AndroidSvg NAMES = AndroidSvg.of("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", "tt", "masksProperties", "shapes", "t", "ef", "sr", "st", "w", "h", "ip", "op", "tm", "cl", "hd", "ao", "bm");
    public static final AndroidSvg TEXT_NAMES = AndroidSvg.of("d", "a");
    public static final AndroidSvg EFFECTS_NAMES = AndroidSvg.of("ty", "nm");

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.airbnb.lottie.parser.LayerParser$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType = iArr;
            try {
                iArr[Layer.MatteType.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[Layer.MatteType.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Layer parse(JsonUtf8Reader jsonUtf8Reader, LottieComposition lottieComposition) {
        boolean z;
        String str;
        Float f;
        String str2;
        String str3;
        boolean z2;
        float f2;
        char c;
        String str4;
        char c2;
        String str5;
        Float f3;
        float f4;
        Float f5;
        AnimatableFloatValue animatableFloatValue;
        AnimatableFloatValue animatableFloatValue2;
        AnimatableFloatValue animatableFloatValue3;
        char c3;
        float f6;
        Float valueOf = Float.valueOf(RecyclerView.DECELERATION_RATE);
        Float valueOf2 = Float.valueOf(1.0f);
        Layer.MatteType matteType = Layer.MatteType.NONE;
        LBlendMode lBlendMode = LBlendMode.NORMAL;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        jsonUtf8Reader.beginObject();
        boolean z3 = false;
        Layer.MatteType matteType2 = matteType;
        LBlendMode lBlendMode2 = lBlendMode;
        float f7 = 0.0f;
        float f8 = 0.0f;
        float f9 = 0.0f;
        float f10 = 0.0f;
        float f11 = 0.0f;
        boolean z4 = false;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z5 = false;
        AnimatableTransform animatableTransform = null;
        Layer.LayerType layerType = null;
        String str6 = null;
        MemoryCacheService memoryCacheService = null;
        Request.Builder builder = null;
        AnimatableTextFrame animatableTextFrame = null;
        AndroidSvg androidSvg = null;
        AnimatableFloatValue animatableFloatValue4 = null;
        float f12 = 1.0f;
        long j = 0;
        String str7 = null;
        String str8 = "UNSET";
        long j2 = -1;
        while (jsonUtf8Reader.hasNext()) {
            boolean z6 = true;
            switch (jsonUtf8Reader.selectName(NAMES)) {
                case 0:
                    str5 = str7;
                    str8 = jsonUtf8Reader.nextString();
                    str7 = str5;
                    break;
                case 1:
                    f = valueOf;
                    str2 = str7;
                    j = jsonUtf8Reader.nextInt();
                    str7 = str2;
                    valueOf = f;
                    break;
                case 2:
                    str5 = str7;
                    str6 = jsonUtf8Reader.nextString();
                    str7 = str5;
                    break;
                case 3:
                    f = valueOf;
                    str3 = str7;
                    z2 = z3;
                    f2 = f12;
                    int nextInt = jsonUtf8Reader.nextInt();
                    layerType = Layer.LayerType.UNKNOWN;
                    if (nextInt < layerType.ordinal()) {
                        layerType = Layer.LayerType.values()[nextInt];
                    }
                    z3 = z2;
                    str7 = str3;
                    f12 = f2;
                    valueOf = f;
                    break;
                case 4:
                    f = valueOf;
                    str2 = str7;
                    j2 = jsonUtf8Reader.nextInt();
                    str7 = str2;
                    valueOf = f;
                    break;
                case 5:
                    f = valueOf;
                    str2 = str7;
                    i = (int) (Utils.dpScale() * jsonUtf8Reader.nextInt());
                    str7 = str2;
                    valueOf = f;
                    break;
                case 6:
                    f = valueOf;
                    str2 = str7;
                    i2 = (int) (Utils.dpScale() * jsonUtf8Reader.nextInt());
                    str7 = str2;
                    valueOf = f;
                    break;
                case 7:
                    f = valueOf;
                    str2 = str7;
                    i3 = Color.parseColor(jsonUtf8Reader.nextString());
                    str7 = str2;
                    valueOf = f;
                    break;
                case 8:
                    str5 = str7;
                    animatableTransform = AnimatableTransformParser.parse(jsonUtf8Reader, lottieComposition);
                    str7 = str5;
                    break;
                case 9:
                    f = valueOf;
                    str3 = str7;
                    z2 = z3;
                    f2 = f12;
                    int nextInt2 = jsonUtf8Reader.nextInt();
                    if (nextInt2 >= Layer.MatteType.values().length) {
                        lottieComposition.addWarning("Unsupported matte type: " + nextInt2);
                    } else {
                        matteType2 = Layer.MatteType.values()[nextInt2];
                        int i4 = AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[matteType2.ordinal()];
                        if (i4 == 1) {
                            lottieComposition.addWarning("Unsupported matte type: Luma");
                        } else if (i4 == 2) {
                            lottieComposition.addWarning("Unsupported matte type: Luma Inverted");
                        }
                        lottieComposition.maskAndMatteCount++;
                    }
                    z3 = z2;
                    str7 = str3;
                    f12 = f2;
                    valueOf = f;
                    break;
                case 10:
                    f = valueOf;
                    f2 = f12;
                    jsonUtf8Reader.beginArray();
                    while (jsonUtf8Reader.hasNext()) {
                        jsonUtf8Reader.beginObject();
                        Mask.MaskMode maskMode = null;
                        AnimatableTextFrame animatableTextFrame2 = null;
                        AnimatableTextFrame animatableTextFrame3 = null;
                        boolean z7 = false;
                        while (jsonUtf8Reader.hasNext()) {
                            String nextName = jsonUtf8Reader.nextName();
                            nextName.getClass();
                            switch (nextName.hashCode()) {
                                case 111:
                                    if (nextName.equals("o")) {
                                        c = 0;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case 3588:
                                    if (nextName.equals("pt")) {
                                        c = 1;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case 104433:
                                    if (nextName.equals("inv")) {
                                        c = 2;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case 3357091:
                                    if (nextName.equals("mode")) {
                                        c = 3;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                default:
                                    c = 65535;
                                    break;
                            }
                            switch (c) {
                                case 0:
                                    str4 = str7;
                                    animatableTextFrame3 = UStringsKt.parseInteger(jsonUtf8Reader, lottieComposition);
                                    break;
                                case 1:
                                    str4 = str7;
                                    animatableTextFrame2 = new AnimatableTextFrame(KeyframesParser.parse(jsonUtf8Reader, lottieComposition, Utils.dpScale(), ShapeDataParser.INSTANCE, false), 6);
                                    break;
                                case 2:
                                    str4 = str7;
                                    z7 = jsonUtf8Reader.nextBoolean();
                                    break;
                                case 3:
                                    String nextString = jsonUtf8Reader.nextString();
                                    nextString.getClass();
                                    switch (nextString.hashCode()) {
                                        case 97:
                                            if (nextString.equals("a")) {
                                                c2 = 0;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case 105:
                                            if (nextString.equals("i")) {
                                                c2 = 1;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case 110:
                                            if (nextString.equals("n")) {
                                                c2 = 2;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case 115:
                                            if (nextString.equals("s")) {
                                                c2 = 3;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        default:
                                            c2 = 65535;
                                            break;
                                    }
                                    switch (c2) {
                                        case 0:
                                            maskMode = Mask.MaskMode.MASK_MODE_ADD;
                                            break;
                                        case 1:
                                            lottieComposition.addWarning("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                                            maskMode = Mask.MaskMode.MASK_MODE_INTERSECT;
                                            break;
                                        case 2:
                                            maskMode = Mask.MaskMode.MASK_MODE_NONE;
                                            break;
                                        case 3:
                                            maskMode = Mask.MaskMode.MASK_MODE_SUBTRACT;
                                            break;
                                        default:
                                            Logger.warning("Unknown mask mode " + nextName + ". Defaulting to Add.");
                                            maskMode = Mask.MaskMode.MASK_MODE_ADD;
                                            break;
                                    }
                                    str4 = str7;
                                    break;
                                default:
                                    jsonUtf8Reader.skipValue();
                                    str4 = str7;
                                    break;
                            }
                            str7 = str4;
                        }
                        jsonUtf8Reader.endObject();
                        arrayList.add(new Mask(maskMode, animatableTextFrame2, animatableTextFrame3, z7));
                        str7 = str7;
                    }
                    str3 = str7;
                    z2 = false;
                    lottieComposition.maskAndMatteCount += arrayList.size();
                    jsonUtf8Reader.endArray();
                    z3 = z2;
                    str7 = str3;
                    f12 = f2;
                    valueOf = f;
                    break;
                case 11:
                    f = valueOf;
                    f2 = f12;
                    jsonUtf8Reader.beginArray();
                    while (jsonUtf8Reader.hasNext()) {
                        ContentModel parse = ContentModelParser.parse(jsonUtf8Reader, lottieComposition);
                        if (parse != null) {
                            arrayList2.add(parse);
                        }
                    }
                    jsonUtf8Reader.endArray();
                    str3 = str7;
                    z2 = false;
                    z3 = z2;
                    str7 = str3;
                    f12 = f2;
                    valueOf = f;
                    break;
                case 12:
                    f3 = valueOf;
                    f4 = f12;
                    jsonUtf8Reader.beginObject();
                    while (jsonUtf8Reader.hasNext()) {
                        int selectName = jsonUtf8Reader.selectName(TEXT_NAMES);
                        if (selectName == 0) {
                            animatableTextFrame = new AnimatableTextFrame(KeyframesParser.parse(jsonUtf8Reader, lottieComposition, Utils.dpScale(), DocumentDataParser.INSTANCE, false), 0);
                        } else if (selectName != 1) {
                            jsonUtf8Reader.skipName();
                            jsonUtf8Reader.skipValue();
                        } else {
                            jsonUtf8Reader.beginArray();
                            if (jsonUtf8Reader.hasNext()) {
                                AndroidSvg androidSvg2 = AnimatableTextPropertiesParser.PROPERTIES_NAMES;
                                jsonUtf8Reader.beginObject();
                                Request.Builder builder2 = null;
                                ImageLoader$Builder imageLoader$Builder = null;
                                while (jsonUtf8Reader.hasNext()) {
                                    int selectName2 = jsonUtf8Reader.selectName(AnimatableTextPropertiesParser.PROPERTIES_NAMES);
                                    if (selectName2 != 0) {
                                        boolean z8 = true;
                                        if (selectName2 != 1) {
                                            jsonUtf8Reader.skipName();
                                            jsonUtf8Reader.skipValue();
                                        } else {
                                            jsonUtf8Reader.beginObject();
                                            AnimatableTextFrame animatableTextFrame4 = null;
                                            AnimatableTextFrame animatableTextFrame5 = null;
                                            AnimatableFloatValue animatableFloatValue5 = null;
                                            AnimatableFloatValue animatableFloatValue6 = null;
                                            AnimatableTextFrame animatableTextFrame6 = null;
                                            while (jsonUtf8Reader.hasNext()) {
                                                int selectName3 = jsonUtf8Reader.selectName(AnimatableTextPropertiesParser.ANIMATABLE_PROPERTIES_NAMES);
                                                if (selectName3 == 0) {
                                                    animatableTextFrame4 = UStringsKt.parseColor(jsonUtf8Reader, lottieComposition);
                                                } else if (selectName3 == z8) {
                                                    animatableTextFrame5 = UStringsKt.parseColor(jsonUtf8Reader, lottieComposition);
                                                } else if (selectName3 == 2) {
                                                    animatableFloatValue5 = UStringsKt.parseFloat(jsonUtf8Reader, lottieComposition, z8);
                                                } else if (selectName3 == 3) {
                                                    animatableFloatValue6 = UStringsKt.parseFloat(jsonUtf8Reader, lottieComposition, z8);
                                                } else if (selectName3 != 4) {
                                                    jsonUtf8Reader.skipName();
                                                    jsonUtf8Reader.skipValue();
                                                } else {
                                                    animatableTextFrame6 = UStringsKt.parseInteger(jsonUtf8Reader, lottieComposition);
                                                }
                                                z8 = true;
                                            }
                                            jsonUtf8Reader.endObject();
                                            builder2 = new Request.Builder(animatableTextFrame4, animatableTextFrame5, animatableFloatValue5, animatableFloatValue6, animatableTextFrame6);
                                        }
                                    } else {
                                        jsonUtf8Reader.beginObject();
                                        AnimatableTextFrame animatableTextFrame7 = null;
                                        AnimatableTextFrame animatableTextFrame8 = null;
                                        AnimatableTextFrame animatableTextFrame9 = null;
                                        TextRangeUnits textRangeUnits = null;
                                        while (jsonUtf8Reader.hasNext()) {
                                            int selectName4 = jsonUtf8Reader.selectName(AnimatableTextPropertiesParser.ANIMATABLE_RANGE_PROPERTIES_NAMES);
                                            if (selectName4 != 0) {
                                                int i5 = 1;
                                                if (selectName4 == 1) {
                                                    animatableTextFrame8 = UStringsKt.parseInteger(jsonUtf8Reader, lottieComposition);
                                                } else if (selectName4 == 2) {
                                                    animatableTextFrame9 = UStringsKt.parseInteger(jsonUtf8Reader, lottieComposition);
                                                } else if (selectName4 != 3) {
                                                    jsonUtf8Reader.skipName();
                                                    jsonUtf8Reader.skipValue();
                                                } else {
                                                    int nextInt3 = jsonUtf8Reader.nextInt();
                                                    if (nextInt3 != 1) {
                                                        if (nextInt3 != 2) {
                                                            lottieComposition.addWarning("Unsupported text range units: " + nextInt3);
                                                            textRangeUnits = TextRangeUnits.INDEX;
                                                        } else {
                                                            i5 = 1;
                                                        }
                                                    }
                                                    textRangeUnits = nextInt3 == i5 ? TextRangeUnits.PERCENT : TextRangeUnits.INDEX;
                                                }
                                            } else {
                                                animatableTextFrame7 = UStringsKt.parseInteger(jsonUtf8Reader, lottieComposition);
                                            }
                                        }
                                        jsonUtf8Reader.endObject();
                                        if (animatableTextFrame7 == null && animatableTextFrame8 != null) {
                                            animatableTextFrame7 = new AnimatableTextFrame(Collections.singletonList(new Keyframe(0)), 3);
                                        }
                                        imageLoader$Builder = new ImageLoader$Builder(animatableTextFrame7, animatableTextFrame8, animatableTextFrame9, textRangeUnits, 19);
                                    }
                                }
                                jsonUtf8Reader.endObject();
                                androidSvg = new AndroidSvg(builder2, imageLoader$Builder);
                            }
                            while (jsonUtf8Reader.hasNext()) {
                                jsonUtf8Reader.skipValue();
                            }
                            jsonUtf8Reader.endArray();
                        }
                    }
                    jsonUtf8Reader.endObject();
                    f12 = f4;
                    valueOf = f3;
                    z3 = false;
                    break;
                case IMAGE_VALUE:
                    f4 = f12;
                    jsonUtf8Reader.beginArray();
                    ArrayList arrayList3 = new ArrayList();
                    while (jsonUtf8Reader.hasNext()) {
                        jsonUtf8Reader.beginObject();
                        while (jsonUtf8Reader.hasNext()) {
                            int selectName5 = jsonUtf8Reader.selectName(EFFECTS_NAMES);
                            if (selectName5 == 0) {
                                int nextInt4 = jsonUtf8Reader.nextInt();
                                if (nextInt4 == 29) {
                                    AndroidSvg androidSvg3 = BlurEffectParser.BLUR_EFFECT_NAMES;
                                    memoryCacheService = null;
                                    while (jsonUtf8Reader.hasNext()) {
                                        if (jsonUtf8Reader.selectName(BlurEffectParser.BLUR_EFFECT_NAMES) != 0) {
                                            jsonUtf8Reader.skipName();
                                            jsonUtf8Reader.skipValue();
                                        } else {
                                            jsonUtf8Reader.beginArray();
                                            while (jsonUtf8Reader.hasNext()) {
                                                jsonUtf8Reader.beginObject();
                                                boolean z9 = false;
                                                MemoryCacheService memoryCacheService2 = null;
                                                while (jsonUtf8Reader.hasNext()) {
                                                    int selectName6 = jsonUtf8Reader.selectName(BlurEffectParser.INNER_BLUR_EFFECT_NAMES);
                                                    if (selectName6 == 0) {
                                                        z9 = jsonUtf8Reader.nextInt() == 0;
                                                    } else if (selectName6 != z6) {
                                                        jsonUtf8Reader.skipName();
                                                        jsonUtf8Reader.skipValue();
                                                    } else if (z9) {
                                                        memoryCacheService2 = new MemoryCacheService(14, UStringsKt.parseFloat(jsonUtf8Reader, lottieComposition, z6));
                                                    } else {
                                                        jsonUtf8Reader.skipValue();
                                                    }
                                                    z6 = true;
                                                }
                                                jsonUtf8Reader.endObject();
                                                if (memoryCacheService2 != null) {
                                                    memoryCacheService = memoryCacheService2;
                                                }
                                                z6 = true;
                                            }
                                            jsonUtf8Reader.endArray();
                                            z6 = true;
                                        }
                                    }
                                } else if (nextInt4 == 25) {
                                    DropShadowEffectParser dropShadowEffectParser = new DropShadowEffectParser();
                                    while (jsonUtf8Reader.hasNext()) {
                                        if (jsonUtf8Reader.selectName(DropShadowEffectParser.DROP_SHADOW_EFFECT_NAMES) != 0) {
                                            jsonUtf8Reader.skipName();
                                            jsonUtf8Reader.skipValue();
                                        } else {
                                            jsonUtf8Reader.beginArray();
                                            while (jsonUtf8Reader.hasNext()) {
                                                jsonUtf8Reader.beginObject();
                                                String str9 = "";
                                                while (jsonUtf8Reader.hasNext()) {
                                                    int selectName7 = jsonUtf8Reader.selectName(DropShadowEffectParser.INNER_EFFECT_NAMES);
                                                    if (selectName7 == 0) {
                                                        str9 = jsonUtf8Reader.nextString();
                                                    } else if (selectName7 == 1) {
                                                        str9.getClass();
                                                        switch (str9.hashCode()) {
                                                            case 353103893:
                                                                if (str9.equals("Distance")) {
                                                                    c3 = 0;
                                                                    break;
                                                                }
                                                                c3 = 65535;
                                                                break;
                                                            case 397447147:
                                                                if (str9.equals("Opacity")) {
                                                                    c3 = 1;
                                                                    break;
                                                                }
                                                                c3 = 65535;
                                                                break;
                                                            case 1041377119:
                                                                if (str9.equals("Direction")) {
                                                                    c3 = 2;
                                                                    break;
                                                                }
                                                                c3 = 65535;
                                                                break;
                                                            case 1379387491:
                                                                if (str9.equals("Shadow Color")) {
                                                                    c3 = 3;
                                                                    break;
                                                                }
                                                                c3 = 65535;
                                                                break;
                                                            case 1383710113:
                                                                if (str9.equals("Softness")) {
                                                                    c3 = 4;
                                                                    break;
                                                                }
                                                                c3 = 65535;
                                                                break;
                                                            default:
                                                                c3 = 65535;
                                                                break;
                                                        }
                                                        switch (c3) {
                                                            case 0:
                                                                dropShadowEffectParser.distance = UStringsKt.parseFloat(jsonUtf8Reader, lottieComposition, true);
                                                                break;
                                                            case 1:
                                                                dropShadowEffectParser.opacity = UStringsKt.parseFloat(jsonUtf8Reader, lottieComposition, false);
                                                                break;
                                                            case 2:
                                                                dropShadowEffectParser.direction = UStringsKt.parseFloat(jsonUtf8Reader, lottieComposition, false);
                                                                break;
                                                            case 3:
                                                                dropShadowEffectParser.color = UStringsKt.parseColor(jsonUtf8Reader, lottieComposition);
                                                                break;
                                                            case 4:
                                                                dropShadowEffectParser.radius = UStringsKt.parseFloat(jsonUtf8Reader, lottieComposition, true);
                                                                break;
                                                            default:
                                                                jsonUtf8Reader.skipValue();
                                                                break;
                                                        }
                                                    } else {
                                                        jsonUtf8Reader.skipName();
                                                        jsonUtf8Reader.skipValue();
                                                    }
                                                }
                                                jsonUtf8Reader.endObject();
                                            }
                                            jsonUtf8Reader.endArray();
                                        }
                                    }
                                    AnimatableTextFrame animatableTextFrame10 = dropShadowEffectParser.color;
                                    if (animatableTextFrame10 == null || (animatableFloatValue = dropShadowEffectParser.opacity) == null || (animatableFloatValue2 = dropShadowEffectParser.direction) == null) {
                                        f5 = valueOf;
                                    } else {
                                        f5 = valueOf;
                                        AnimatableFloatValue animatableFloatValue7 = dropShadowEffectParser.distance;
                                        if (animatableFloatValue7 != null && (animatableFloatValue3 = dropShadowEffectParser.radius) != null) {
                                            builder = new Request.Builder(animatableTextFrame10, animatableFloatValue, animatableFloatValue2, animatableFloatValue7, animatableFloatValue3);
                                            valueOf = f5;
                                            z6 = true;
                                        }
                                    }
                                    builder = null;
                                    valueOf = f5;
                                    z6 = true;
                                }
                            } else if (selectName5 != z6) {
                                jsonUtf8Reader.skipName();
                                jsonUtf8Reader.skipValue();
                            } else {
                                arrayList3.add(jsonUtf8Reader.nextString());
                            }
                            f5 = valueOf;
                            valueOf = f5;
                            z6 = true;
                        }
                        jsonUtf8Reader.endObject();
                        z6 = true;
                    }
                    f3 = valueOf;
                    jsonUtf8Reader.endArray();
                    lottieComposition.addWarning("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList3);
                    f12 = f4;
                    valueOf = f3;
                    z3 = false;
                    break;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    f12 = (float) jsonUtf8Reader.nextDouble();
                    z3 = false;
                    break;
                case 15:
                    f11 = (float) jsonUtf8Reader.nextDouble();
                    z3 = false;
                    break;
                case LAZY_VERTICAL_GRID_VALUE:
                    f6 = f12;
                    f9 = (float) (jsonUtf8Reader.nextDouble() * Utils.dpScale());
                    f12 = f6;
                    z3 = false;
                    break;
                case VERTICAL_GRID_ITEM_VALUE:
                    f6 = f12;
                    f10 = (float) (jsonUtf8Reader.nextDouble() * Utils.dpScale());
                    f12 = f6;
                    z3 = false;
                    break;
                case RADIO_GROUP_VALUE:
                    f7 = (float) jsonUtf8Reader.nextDouble();
                    break;
                case RADIO_BUTTON_VALUE:
                    f8 = (float) jsonUtf8Reader.nextDouble();
                    break;
                case RADIO_ROW_VALUE:
                    animatableFloatValue4 = UStringsKt.parseFloat(jsonUtf8Reader, lottieComposition, z3);
                    break;
                case RADIO_COLUMN_VALUE:
                    str7 = jsonUtf8Reader.nextString();
                    break;
                case SIZE_BOX_VALUE:
                    z5 = jsonUtf8Reader.nextBoolean();
                    break;
                case 23:
                    if (jsonUtf8Reader.nextInt() != 1) {
                        z4 = z3;
                        break;
                    } else {
                        z4 = true;
                        break;
                    }
                case 24:
                    int nextInt5 = jsonUtf8Reader.nextInt();
                    if (nextInt5 < LBlendMode.values().length) {
                        lBlendMode2 = LBlendMode.values()[nextInt5];
                        break;
                    } else {
                        lottieComposition.addWarning("Unsupported Blend Mode: " + nextInt5);
                        lBlendMode2 = LBlendMode.NORMAL;
                        break;
                    }
                default:
                    jsonUtf8Reader.skipName();
                    jsonUtf8Reader.skipValue();
                    f = valueOf;
                    str3 = str7;
                    z2 = z3;
                    f2 = f12;
                    z3 = z2;
                    str7 = str3;
                    f12 = f2;
                    valueOf = f;
                    break;
            }
        }
        Float f13 = valueOf;
        String str10 = str7;
        float f14 = f12;
        jsonUtf8Reader.endObject();
        ArrayList arrayList4 = new ArrayList();
        if (f7 > RecyclerView.DECELERATION_RATE) {
            z = z4;
            str = str10;
            arrayList4.add(new Keyframe(lottieComposition, f13, f13, (Interpolator) null, RecyclerView.DECELERATION_RATE, Float.valueOf(f7)));
        } else {
            z = z4;
            str = str10;
        }
        if (f8 <= RecyclerView.DECELERATION_RATE) {
            f8 = lottieComposition.endFrame;
        }
        arrayList4.add(new Keyframe(lottieComposition, valueOf2, valueOf2, (Interpolator) null, f7, Float.valueOf(f8)));
        arrayList4.add(new Keyframe(lottieComposition, f13, f13, (Interpolator) null, f8, Float.valueOf(Float.MAX_VALUE)));
        if (str8.endsWith(".ai") || "ai".equals(str)) {
            lottieComposition.addWarning("Convert your Illustrator layers to shape layers.");
        }
        if (z) {
            AnimatableTransform animatableTransform2 = animatableTransform == null ? new AnimatableTransform() : animatableTransform;
            animatableTransform2.autoOrient = z;
            animatableTransform = animatableTransform2;
        }
        return new Layer(arrayList2, lottieComposition, str8, j, layerType, j2, str6, arrayList, animatableTransform, i, i2, i3, f14, f11, f9, f10, animatableTextFrame, androidSvg, arrayList4, matteType2, animatableFloatValue4, z5, memoryCacheService, builder, lBlendMode2);
    }
}
