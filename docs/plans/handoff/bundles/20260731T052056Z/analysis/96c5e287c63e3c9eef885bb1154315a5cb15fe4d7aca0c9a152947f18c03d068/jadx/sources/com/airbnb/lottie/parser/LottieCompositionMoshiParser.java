package com.airbnb.lottie.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.recyclerview.widget.RecyclerView;
import coil3.svg.internal.AndroidSvg;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonUtf8Reader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LottieCompositionMoshiParser {
    public static final AndroidSvg NAMES = AndroidSvg.of("w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");
    public static final AndroidSvg ASSETS_NAMES = AndroidSvg.of("id", "layers", "w", "h", "p", "u");
    public static final AndroidSvg FONT_NAMES = AndroidSvg.of("list");
    public static final AndroidSvg MARKER_NAMES = AndroidSvg.of("cm", "tm", "dr");

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0045. Please report as an issue. */
    public static LottieComposition parse(JsonUtf8Reader jsonUtf8Reader) {
        LottieComposition lottieComposition;
        float f;
        LottieComposition lottieComposition2;
        float f2;
        LottieComposition lottieComposition3;
        int i;
        float f3;
        LottieComposition lottieComposition4;
        int i2;
        float f4;
        float f5;
        float dpScale = Utils.dpScale();
        LongSparseArray longSparseArray = new LongSparseArray((Object) null);
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        SparseArrayCompat sparseArrayCompat = new SparseArrayCompat(0);
        LottieComposition lottieComposition5 = new LottieComposition();
        jsonUtf8Reader.beginObject();
        int i3 = 0;
        int i4 = 0;
        float f6 = RecyclerView.DECELERATION_RATE;
        float f7 = RecyclerView.DECELERATION_RATE;
        float f8 = RecyclerView.DECELERATION_RATE;
        while (jsonUtf8Reader.hasNext()) {
            switch (jsonUtf8Reader.selectName(NAMES)) {
                case 0:
                    lottieComposition = lottieComposition5;
                    i3 = (int) jsonUtf8Reader.nextDouble();
                    lottieComposition5 = lottieComposition;
                    break;
                case 1:
                    lottieComposition = lottieComposition5;
                    i4 = (int) jsonUtf8Reader.nextDouble();
                    lottieComposition5 = lottieComposition;
                    break;
                case 2:
                    lottieComposition = lottieComposition5;
                    f7 = (float) jsonUtf8Reader.nextDouble();
                    lottieComposition5 = lottieComposition;
                    break;
                case 3:
                    f = dpScale;
                    lottieComposition2 = lottieComposition5;
                    f6 = ((float) jsonUtf8Reader.nextDouble()) - 0.01f;
                    lottieComposition5 = lottieComposition2;
                    dpScale = f;
                    break;
                case 4:
                    f = dpScale;
                    lottieComposition2 = lottieComposition5;
                    f8 = (float) jsonUtf8Reader.nextDouble();
                    lottieComposition5 = lottieComposition2;
                    dpScale = f;
                    break;
                case 5:
                    f2 = dpScale;
                    lottieComposition3 = lottieComposition5;
                    i = i4;
                    f3 = f7;
                    String[] split = jsonUtf8Reader.nextString().split("\\.");
                    int parseInt = Integer.parseInt(split[0]);
                    int parseInt2 = Integer.parseInt(split[1]);
                    int parseInt3 = Integer.parseInt(split[2]);
                    if (parseInt < 4 || (parseInt <= 4 && (parseInt2 < 4 || (parseInt2 <= 4 && parseInt3 < 0)))) {
                        lottieComposition3.addWarning("Lottie only supports bodymovin >= 4.4.0");
                    }
                    lottieComposition5 = lottieComposition3;
                    i4 = i;
                    dpScale = f2;
                    f7 = f3;
                    break;
                case 6:
                    f2 = dpScale;
                    LottieComposition lottieComposition6 = lottieComposition5;
                    i = i4;
                    f3 = f7;
                    jsonUtf8Reader.beginArray();
                    int i5 = 0;
                    while (jsonUtf8Reader.hasNext()) {
                        LottieComposition lottieComposition7 = lottieComposition6;
                        Layer parse = LayerParser.parse(jsonUtf8Reader, lottieComposition7);
                        if (parse.layerType == Layer.LayerType.IMAGE) {
                            i5++;
                        }
                        arrayList.add(parse);
                        longSparseArray.put(parse.layerId, parse);
                        if (i5 > 4) {
                            Logger.warning("You have " + i5 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                        }
                        lottieComposition6 = lottieComposition7;
                    }
                    lottieComposition3 = lottieComposition6;
                    jsonUtf8Reader.endArray();
                    lottieComposition5 = lottieComposition3;
                    i4 = i;
                    dpScale = f2;
                    f7 = f3;
                    break;
                case 7:
                    f2 = dpScale;
                    i = i4;
                    f3 = f7;
                    jsonUtf8Reader.beginArray();
                    while (jsonUtf8Reader.hasNext()) {
                        ArrayList arrayList3 = new ArrayList();
                        LongSparseArray longSparseArray2 = new LongSparseArray((Object) null);
                        jsonUtf8Reader.beginObject();
                        String str = null;
                        String str2 = null;
                        String str3 = null;
                        int i6 = 0;
                        int i7 = 0;
                        while (jsonUtf8Reader.hasNext()) {
                            int selectName = jsonUtf8Reader.selectName(ASSETS_NAMES);
                            if (selectName != 0) {
                                if (selectName == 1) {
                                    jsonUtf8Reader.beginArray();
                                    while (jsonUtf8Reader.hasNext()) {
                                        Layer parse2 = LayerParser.parse(jsonUtf8Reader, lottieComposition5);
                                        longSparseArray2.put(parse2.layerId, parse2);
                                        arrayList3.add(parse2);
                                        lottieComposition5 = lottieComposition5;
                                    }
                                    lottieComposition4 = lottieComposition5;
                                    jsonUtf8Reader.endArray();
                                } else if (selectName == 2) {
                                    i6 = jsonUtf8Reader.nextInt();
                                } else if (selectName == 3) {
                                    i7 = jsonUtf8Reader.nextInt();
                                } else if (selectName == 4) {
                                    str2 = jsonUtf8Reader.nextString();
                                } else if (selectName != 5) {
                                    jsonUtf8Reader.skipName();
                                    jsonUtf8Reader.skipValue();
                                    lottieComposition4 = lottieComposition5;
                                } else {
                                    str3 = jsonUtf8Reader.nextString();
                                }
                                lottieComposition5 = lottieComposition4;
                            } else {
                                str = jsonUtf8Reader.nextString();
                            }
                        }
                        LottieComposition lottieComposition8 = lottieComposition5;
                        jsonUtf8Reader.endObject();
                        if (str2 != null) {
                            hashMap2.put(str, new LottieImageAsset(i6, i7, str, str2, str3));
                        } else {
                            hashMap.put(str, arrayList3);
                        }
                        lottieComposition5 = lottieComposition8;
                    }
                    jsonUtf8Reader.endArray();
                    lottieComposition3 = lottieComposition5;
                    lottieComposition5 = lottieComposition3;
                    i4 = i;
                    dpScale = f2;
                    f7 = f3;
                    break;
                case 8:
                    f2 = dpScale;
                    int i8 = i4;
                    float f9 = f7;
                    jsonUtf8Reader.beginObject();
                    while (jsonUtf8Reader.hasNext()) {
                        if (jsonUtf8Reader.selectName(FONT_NAMES) != 0) {
                            jsonUtf8Reader.skipName();
                            jsonUtf8Reader.skipValue();
                        } else {
                            jsonUtf8Reader.beginArray();
                            while (jsonUtf8Reader.hasNext()) {
                                AndroidSvg androidSvg = FontParser.NAMES;
                                jsonUtf8Reader.beginObject();
                                String str4 = null;
                                String str5 = null;
                                String str6 = null;
                                while (jsonUtf8Reader.hasNext()) {
                                    int i9 = i8;
                                    int selectName2 = jsonUtf8Reader.selectName(FontParser.NAMES);
                                    if (selectName2 != 0) {
                                        float f10 = f9;
                                        if (selectName2 == 1) {
                                            str5 = jsonUtf8Reader.nextString();
                                        } else if (selectName2 == 2) {
                                            str6 = jsonUtf8Reader.nextString();
                                        } else if (selectName2 != 3) {
                                            jsonUtf8Reader.skipName();
                                            jsonUtf8Reader.skipValue();
                                        } else {
                                            jsonUtf8Reader.nextDouble();
                                        }
                                        i8 = i9;
                                        f9 = f10;
                                    } else {
                                        str4 = jsonUtf8Reader.nextString();
                                        i8 = i9;
                                    }
                                }
                                jsonUtf8Reader.endObject();
                                hashMap3.put(str5, new Font(str4, str5, str6));
                                i8 = i8;
                            }
                            jsonUtf8Reader.endArray();
                        }
                    }
                    i = i8;
                    f3 = f9;
                    jsonUtf8Reader.endObject();
                    lottieComposition3 = lottieComposition5;
                    lottieComposition5 = lottieComposition3;
                    i4 = i;
                    dpScale = f2;
                    f7 = f3;
                    break;
                case 9:
                    f2 = dpScale;
                    i2 = i4;
                    f4 = f7;
                    jsonUtf8Reader.beginArray();
                    while (jsonUtf8Reader.hasNext()) {
                        AndroidSvg androidSvg2 = FontCharacterParser.NAMES;
                        ArrayList arrayList4 = new ArrayList();
                        jsonUtf8Reader.beginObject();
                        double d = 0.0d;
                        char c = 0;
                        String str7 = null;
                        String str8 = null;
                        while (jsonUtf8Reader.hasNext()) {
                            int selectName3 = jsonUtf8Reader.selectName(FontCharacterParser.NAMES);
                            if (selectName3 == 0) {
                                c = jsonUtf8Reader.nextString().charAt(0);
                            } else if (selectName3 == 1) {
                                jsonUtf8Reader.nextDouble();
                            } else if (selectName3 == 2) {
                                d = jsonUtf8Reader.nextDouble();
                            } else if (selectName3 == 3) {
                                str7 = jsonUtf8Reader.nextString();
                            } else if (selectName3 == 4) {
                                str8 = jsonUtf8Reader.nextString();
                            } else if (selectName3 != 5) {
                                jsonUtf8Reader.skipName();
                                jsonUtf8Reader.skipValue();
                            } else {
                                jsonUtf8Reader.beginObject();
                                while (jsonUtf8Reader.hasNext()) {
                                    if (jsonUtf8Reader.selectName(FontCharacterParser.DATA_NAMES) != 0) {
                                        jsonUtf8Reader.skipName();
                                        jsonUtf8Reader.skipValue();
                                    } else {
                                        jsonUtf8Reader.beginArray();
                                        while (jsonUtf8Reader.hasNext()) {
                                            arrayList4.add((ShapeGroup) ContentModelParser.parse(jsonUtf8Reader, lottieComposition5));
                                        }
                                        jsonUtf8Reader.endArray();
                                    }
                                }
                                jsonUtf8Reader.endObject();
                            }
                        }
                        jsonUtf8Reader.endObject();
                        FontCharacter fontCharacter = new FontCharacter(arrayList4, c, d, str7, str8);
                        sparseArrayCompat.put(fontCharacter.hashCode(), fontCharacter);
                    }
                    jsonUtf8Reader.endArray();
                    i = i2;
                    f3 = f4;
                    lottieComposition3 = lottieComposition5;
                    lottieComposition5 = lottieComposition3;
                    i4 = i;
                    dpScale = f2;
                    f7 = f3;
                    break;
                case 10:
                    jsonUtf8Reader.beginArray();
                    while (jsonUtf8Reader.hasNext()) {
                        jsonUtf8Reader.beginObject();
                        String str9 = null;
                        float f11 = RecyclerView.DECELERATION_RATE;
                        while (jsonUtf8Reader.hasNext()) {
                            int selectName4 = jsonUtf8Reader.selectName(MARKER_NAMES);
                            if (selectName4 != 0) {
                                f5 = dpScale;
                                if (selectName4 == 1) {
                                    f7 = f7;
                                    f11 = (float) jsonUtf8Reader.nextDouble();
                                    i4 = i4;
                                } else if (selectName4 != 2) {
                                    jsonUtf8Reader.skipName();
                                    jsonUtf8Reader.skipValue();
                                } else {
                                    jsonUtf8Reader.nextDouble();
                                }
                            } else {
                                f5 = dpScale;
                                str9 = jsonUtf8Reader.nextString();
                            }
                            dpScale = f5;
                        }
                        jsonUtf8Reader.endObject();
                        arrayList2.add(new Marker(str9, f11));
                        i4 = i4;
                        f7 = f7;
                        dpScale = dpScale;
                    }
                    f2 = dpScale;
                    i2 = i4;
                    f4 = f7;
                    jsonUtf8Reader.endArray();
                    i = i2;
                    f3 = f4;
                    lottieComposition3 = lottieComposition5;
                    lottieComposition5 = lottieComposition3;
                    i4 = i;
                    dpScale = f2;
                    f7 = f3;
                    break;
                default:
                    jsonUtf8Reader.skipName();
                    jsonUtf8Reader.skipValue();
                    f2 = dpScale;
                    lottieComposition3 = lottieComposition5;
                    i = i4;
                    f3 = f7;
                    lottieComposition5 = lottieComposition3;
                    i4 = i;
                    dpScale = f2;
                    f7 = f3;
                    break;
            }
        }
        float f12 = dpScale;
        LottieComposition lottieComposition9 = lottieComposition5;
        Rect rect = new Rect(0, 0, (int) (i3 * f12), (int) (i4 * f12));
        float dpScale2 = Utils.dpScale();
        lottieComposition9.bounds = rect;
        lottieComposition9.startFrame = f7;
        lottieComposition9.endFrame = f6;
        lottieComposition9.frameRate = f8;
        lottieComposition9.layers = arrayList;
        lottieComposition9.layerMap = longSparseArray;
        lottieComposition9.precomps = hashMap;
        lottieComposition9.images = hashMap2;
        lottieComposition9.imagesDpScale = dpScale2;
        lottieComposition9.characters = sparseArrayCompat;
        lottieComposition9.fonts = hashMap3;
        lottieComposition9.markers = arrayList2;
        return lottieComposition9;
    }
}
