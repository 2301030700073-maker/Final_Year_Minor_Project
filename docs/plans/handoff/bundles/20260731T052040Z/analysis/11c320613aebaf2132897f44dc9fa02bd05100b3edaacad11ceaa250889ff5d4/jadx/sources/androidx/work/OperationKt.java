package androidx.work;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Layout;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.appcompat.widget.TooltipCompat$Api26Impl;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.runtime.tooling.DiagnosticComposeException;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.RadialGradient;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.SweepGradient;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.text.android.TextLayout_androidKt;
import androidx.compose.ui.text.android.style.IndentationFixSpan_androidKt$WhenMappings;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.os.BundleKt;
import androidx.lifecycle.MutableLiveData;
import androidx.preference.PreferenceManager;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import j$.util.Optional;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.regex.Matcher;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.internal.PlatformImplementations$ReflectThrowable;
import kotlin.internal.jdk7.JDK7PlatformImplementations$ReflectSdkVersion;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.SequencesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.descriptors.WrappedSerialDescriptor;
import kotlinx.serialization.internal.PrimitivesKt;
import okhttp3.ConnectionPool;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.UnreadableResponseBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.acra.util.PackageManagerWrapperKt;
import org.jetbrains.compose.resources.vector.XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1;
import org.jetbrains.compose.resources.vector.XmlVectorParserKt$childrenSequence$1;
import org.jetbrains.compose.resources.vector.xmldom.Element;
import org.jetbrains.compose.resources.vector.xmldom.ElementImpl;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$ChannelHeader;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda38;
import org.w3c.dom.Node;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class OperationKt {
    /* renamed from: Rect-tz77jQw, reason: not valid java name */
    public static final Rect m476Recttz77jQw(long j, long j2) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        return new Rect(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j2 & 4294967295L)) + Float.intBitsToFloat(i2));
    }

    public static final WrappedSerialDescriptor SerialDescriptor(String str, SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (StringsKt.isBlank(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Blank serial names are prohibited");
            return null;
        }
        if (!str.equals(serialDescriptor.getSerialName())) {
            if (serialDescriptor.getKind() instanceof PrimitiveKind$INT) {
                PrimitivesKt.checkNameIsNotAPrimitive(str);
            }
            return new WrappedSerialDescriptor(str, serialDescriptor);
        }
        StringBuilder m180m = Modifier.CC.m180m("The name of the wrapped descriptor (", str, ") cannot be the same as the name of the original descriptor (");
        m180m.append(serialDescriptor.getSerialName());
        m180m.append(')');
        throw new IllegalArgumentException(m180m.toString().toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Element apptAttr(Element element, String str) {
        String lookupPrefix = ((Node) ((ConnectionPool) element).delegate).lookupPrefix("http://schemas.android.com/apk/res/android");
        lookupPrefix.getClass();
        Object obj = null;
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(new XmlVectorParserKt$childrenSequence$1(element, null), 4), true, XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1.INSTANCE));
        while (true) {
            if (!filteringSequence$iterator$1.hasNext()) {
                break;
            }
            Object next = filteringSequence$iterator$1.next();
            Object obj2 = (Element) next;
            String namespaceURI = ((Node) ((ConnectionPool) obj2).delegate).getNamespaceURI();
            namespaceURI.getClass();
            if (namespaceURI.equals("http://schemas.android.com/aapt")) {
                String localName = ((Node) ((ConnectionPool) obj2).delegate).getLocalName();
                localName.getClass();
                if (localName.equals("attr")) {
                    String attribute = ((ElementImpl) obj2).element.getAttribute("name");
                    attribute.getClass();
                    if (attribute.equals(lookupPrefix + ":" + str)) {
                        obj = next;
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return (Element) obj;
    }

    public static final String attributeOrNull(Element element, String str) {
        ElementImpl elementImpl = (ElementImpl) element;
        elementImpl.getClass();
        String attributeNS = elementImpl.element.getAttributeNS("http://schemas.android.com/apk/res/android", str);
        attributeNS.getClass();
        if (StringsKt.isBlank(attributeNS)) {
            return null;
        }
        return attributeNS;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (r10.bottom <= r12.top) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0071, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
    
        if (r9 == 17) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
    
        if (r9 != 66) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0046, code lost:
    
        r11 = majorAxisDistance(r9, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
    
        if (r9 == 17) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
    
        if (r9 == 33) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004e, code lost:
    
        if (r9 == 66) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
    
        if (r9 != 130) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0052, code lost:
    
        r9 = r12.bottom;
        r10 = r10.bottom;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
    
        if (r11 >= java.lang.Math.max(1, r9 - r10)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005b, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
    
        r9 = r12.right;
        r10 = r10.right;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
    
        r9 = r10.top;
        r10 = r12.top;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
    
        r9 = r10.left;
        r10 = r12.left;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0031, code lost:
    
        if (r10.right <= r12.left) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0038, code lost:
    
        if (r10.top >= r12.bottom) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x003f, code lost:
    
        if (r10.left >= r12.right) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean beamBeats(int r9, android.graphics.Rect r10, android.graphics.Rect r11, android.graphics.Rect r12) {
        /*
            boolean r0 = beamsOverlap(r9, r10, r11)
            boolean r1 = beamsOverlap(r9, r10, r12)
            r2 = 0
            if (r1 != 0) goto L72
            if (r0 != 0) goto Lf
            goto L72
        Lf:
            java.lang.String r0 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
            r1 = 130(0x82, float:1.82E-43)
            r3 = 33
            r4 = 66
            r5 = 17
            r6 = 1
            if (r9 == r5) goto L3b
            if (r9 == r3) goto L34
            if (r9 == r4) goto L2d
            if (r9 != r1) goto L29
            int r7 = r10.bottom
            int r8 = r12.top
            if (r7 > r8) goto L71
            goto L41
        L29:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1(r0)
            return r2
        L2d:
            int r7 = r10.right
            int r8 = r12.left
            if (r7 > r8) goto L71
            goto L41
        L34:
            int r7 = r10.top
            int r8 = r12.bottom
            if (r7 < r8) goto L71
            goto L41
        L3b:
            int r7 = r10.left
            int r8 = r12.right
            if (r7 < r8) goto L71
        L41:
            if (r9 == r5) goto L71
            if (r9 != r4) goto L46
            goto L71
        L46:
            int r11 = majorAxisDistance(r9, r10, r11)
            if (r9 == r5) goto L66
            if (r9 == r3) goto L61
            if (r9 == r4) goto L5c
            if (r9 != r1) goto L58
            int r9 = r12.bottom
            int r10 = r10.bottom
        L56:
            int r9 = r9 - r10
            goto L6b
        L58:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1(r0)
            return r2
        L5c:
            int r9 = r12.right
            int r10 = r10.right
            goto L56
        L61:
            int r9 = r10.top
            int r10 = r12.top
            goto L56
        L66:
            int r9 = r10.left
            int r10 = r12.left
            goto L56
        L6b:
            int r9 = java.lang.Math.max(r6, r9)
            if (r11 >= r9) goto L72
        L71:
            return r6
        L72:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.beamBeats(int, android.graphics.Rect, android.graphics.Rect, android.graphics.Rect):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0033 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean beamsOverlap(int r2, android.graphics.Rect r3, android.graphics.Rect r4) {
        /*
            r0 = 17
            r1 = 0
            if (r2 == r0) goto L25
            r0 = 33
            if (r2 == r0) goto L18
            r0 = 66
            if (r2 == r0) goto L25
            r0 = 130(0x82, float:1.82E-43)
            if (r2 != r0) goto L12
            goto L18
        L12:
            java.lang.String r2 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1(r2)
            return r1
        L18:
            int r2 = r4.right
            int r0 = r3.left
            if (r2 < r0) goto L33
            int r2 = r4.left
            int r3 = r3.right
            if (r2 > r3) goto L33
            goto L31
        L25:
            int r2 = r4.bottom
            int r0 = r3.top
            if (r2 < r0) goto L33
            int r2 = r4.top
            int r3 = r3.bottom
            if (r2 > r3) goto L33
        L31:
            r2 = 1
            return r2
        L33:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.beamsOverlap(int, android.graphics.Rect, android.graphics.Rect):boolean");
    }

    public static SerialDescriptorImpl buildClassSerialDescriptor$default(String str, SerialDescriptor[] serialDescriptorArr) {
        if (StringsKt.isBlank(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Blank serial names are prohibited");
            return null;
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
        return new SerialDescriptorImpl(str, StructureKind$MAP.INSTANCE$1, classSerialDescriptorBuilder.elementNames.size(), ArraysKt.toList(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    public static final SerialDescriptorImpl buildSerialDescriptor(String str, Jsoup jsoup, SerialDescriptor[] serialDescriptorArr, Function1 function1) {
        if (StringsKt.isBlank(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Blank serial names are prohibited");
            return null;
        }
        if (jsoup.equals(StructureKind$MAP.INSTANCE$1)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
        function1.invoke(classSerialDescriptorBuilder);
        return new SerialDescriptorImpl(str, jsoup, classSerialDescriptorBuilder.elementNames.size(), ArraysKt.toList(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    public static SerialDescriptorImpl buildSerialDescriptor$default(String str, Jsoup jsoup, SerialDescriptor[] serialDescriptorArr) {
        if (StringsKt.isBlank(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Blank serial names are prohibited");
            return null;
        }
        if (jsoup.equals(StructureKind$MAP.INSTANCE$1)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
        return new SerialDescriptorImpl(str, jsoup, classSerialDescriptorBuilder.elementNames.size(), ArraysKt.toList(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    public static void checkIfChannelResponseIsValid(JsonObject jsonObject) {
        if (Utils.isNullOrEmpty(jsonObject.getObject("error"))) {
            return;
        }
        JsonObject object = jsonObject.getObject("error");
        if (object.getInt(0, "code") != 404) {
            throw new ContentNotAvailableException(Owner.CC.m("Got error:\"", object.getString("status", null), "\": ", object.getString("message", null)));
        }
        throw new ContentNotAvailableException("This channel doesn't exist.");
    }

    public static final void copyOfRangeToIndexCheck(int i, int i2) {
        if (i <= i2) {
            return;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("toIndex (", i, ") is greater than size (", i2, ").");
    }

    public static Handler createAsync(Looper looper) {
        Handler createAsync;
        if (Build.VERSION.SDK_INT >= 28) {
            createAsync = Handler.createAsync(looper);
            return createAsync;
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException e) {
            e = e;
            Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
            return new Handler(looper);
        } catch (InstantiationException e2) {
            e = e2;
            Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
            return new Handler(looper);
        } catch (NoSuchMethodException e3) {
            e = e3;
            Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
            return new Handler(looper);
        } catch (InvocationTargetException e4) {
            Throwable cause = e4.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m(cause);
            return null;
        }
    }

    public static final String createFilename(Context context, String str) {
        context.getClass();
        str.getClass();
        SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
        String string = context.getString(R.string.charset_letters_and_digits_value);
        string.getClass();
        String string2 = context.getString(R.string.charset_most_special_value);
        string2.getClass();
        String string3 = context.getString(R.string.default_file_charset_value);
        string3.getClass();
        sharedPreferences.getClass();
        String string4 = context.getString(R.string.settings_file_replacement_character_key);
        string4.getClass();
        String string5 = sharedPreferences.getString(string4, null);
        if (string5 == null) {
            string5 = "_";
        }
        String string6 = context.getString(R.string.settings_file_charset_key);
        string6.getClass();
        String string7 = sharedPreferences.getString(string6, null);
        if (string7 == null) {
            string7 = "";
        }
        if (string7.length() != 0) {
            string3 = string7;
        }
        if (string3.equals(string)) {
            string3 = "[^\\w\\d]+";
        } else if (string3.equals(string2)) {
            string3 = "[\\n\\r|?*<\":\\\\>/']+";
        }
        String quoteReplacement = Matcher.quoteReplacement(string5);
        quoteReplacement.getClass();
        return new Regex(string3).replace(str, quoteReplacement);
    }

    public static int encodeUtf8Naive(String str, byte[] bArr, int i, int i2) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        if (bytes.length - i > i2) {
            throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
        }
        System.arraycopy(bytes, 0, bArr, i, bytes.length);
        return i + bytes.length;
    }

    public static final float fastCbrt(float f) {
        float intBitsToFloat = Float.intBitsToFloat(((int) ((Float.floatToRawIntBits(f) & 8589934591L) / 3)) + 709952852);
        float f2 = intBitsToFloat - ((intBitsToFloat - (f / (intBitsToFloat * intBitsToFloat))) * 0.33333334f);
        return f2 - ((f2 - (f / (f2 * f2))) * 0.33333334f);
    }

    public static JsonObject getChannelAgeGateRenderer(JsonObject jsonObject) {
        return (JsonObject) jsonObject.getObject("contents").getObject("twoColumnBrowseResultsRenderer").getArray("tabs").streamAsJsonObjects().flatMap(new YoutubeChannelHelper$$ExternalSyntheticLambda2(18)).filter(new JsonArray$$ExternalSyntheticLambda0(11)).map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(19)).findFirst().orElse(null);
    }

    public static YoutubeChannelHelper$ChannelHeader getChannelHeader(JsonObject jsonObject) {
        JsonObject object = jsonObject.getObject("header");
        if (object.containsKey("c4TabbedHeaderRenderer")) {
            return (YoutubeChannelHelper$ChannelHeader) Optional.of(object.getObject("c4TabbedHeaderRenderer")).map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(20)).orElse(null);
        }
        if (object.containsKey("carouselHeaderRenderer")) {
            return (YoutubeChannelHelper$ChannelHeader) object.getObject("carouselHeaderRenderer").getArray("contents").streamAsJsonObjects().filter(new JsonArray$$ExternalSyntheticLambda0(13)).findFirst().map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(21)).map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(22)).orElse(null);
        }
        if (object.containsKey("pageHeaderRenderer")) {
            return (YoutubeChannelHelper$ChannelHeader) Optional.of(object.getObject("pageHeaderRenderer")).map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(23)).orElse(null);
        }
        if (object.containsKey("interactiveTabbedHeaderRenderer")) {
            return (YoutubeChannelHelper$ChannelHeader) Optional.of(object.getObject("interactiveTabbedHeaderRenderer")).map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(17)).orElse(null);
        }
        return null;
    }

    public static String getChannelId(YoutubeChannelHelper$ChannelHeader youtubeChannelHelper$ChannelHeader, JsonObject jsonObject, String str) {
        if (youtubeChannelHelper$ChannelHeader != null) {
            int ordinal = youtubeChannelHelper$ChannelHeader.headerType.ordinal();
            if (ordinal == 0) {
                String m480m = RecordTag.m480m(youtubeChannelHelper$ChannelHeader.json, "header", "c4TabbedHeaderRenderer", "channelId", "");
                if (!Utils.isNullOrEmpty(m480m)) {
                    return m480m;
                }
                String m480m2 = RecordTag.m480m(youtubeChannelHelper$ChannelHeader.json, "navigationEndpoint", "browseEndpoint", "browseId", (String) null);
                if (!Utils.isNullOrEmpty(m480m2)) {
                    return m480m2;
                }
            } else if (ordinal == 2) {
                String string = ((JsonObject) youtubeChannelHelper$ChannelHeader.json.getObject("header").getObject("carouselHeaderRenderer").getArray("contents").streamAsJsonObjects().filter(new JsonArray$$ExternalSyntheticLambda0(12)).findFirst().orElse(new JsonObject())).getObject("topicChannelDetailsRenderer").getObject("navigationEndpoint").getObject("browseEndpoint").getString("browseId", null);
                if (!Utils.isNullOrEmpty(string)) {
                    return string;
                }
            }
        }
        String m480m3 = RecordTag.m480m(jsonObject, TtmlNode.TAG_METADATA, "channelMetadataRenderer", "externalChannelId", (String) null);
        if (!Utils.isNullOrEmpty(m480m3)) {
            return m480m3;
        }
        if (!Utils.isNullOrEmpty(str)) {
            return str;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get channel ID");
        return null;
    }

    public static String getChannelName(YoutubeChannelHelper$ChannelHeader youtubeChannelHelper$ChannelHeader, JsonObject jsonObject, JsonObject jsonObject2) {
        if (jsonObject == null) {
            String m480m = RecordTag.m480m(jsonObject2, TtmlNode.TAG_METADATA, "channelMetadataRenderer", "title", (String) null);
            return !Utils.isNullOrEmpty(m480m) ? m480m : (String) Optional.ofNullable(youtubeChannelHelper$ChannelHeader).map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(0)).or(new Player$$ExternalSyntheticLambda38(jsonObject2, 1)).orElseThrow(new Entities$$ExternalSyntheticLambda0(12));
        }
        String string = jsonObject.getString("channelTitle", null);
        if (!Utils.isNullOrEmpty(string)) {
            return string;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get channel name");
        return null;
    }

    public static TokenData getChannelResponse(String str, String str2, ContentCountry contentCountry, Localization localization) {
        JsonObject jsonObject;
        JsonObject jsonPostResponse;
        int i = 0;
        while (true) {
            jsonObject = null;
            if (i >= 3) {
                break;
            }
            JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(localization, contentCountry);
            prepareDesktopJsonBuilder.value(str, "browseId");
            prepareDesktopJsonBuilder.value(str2, "params");
            jsonPostResponse = YoutubeParsingHelper.getJsonPostResponse("browse", Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8), localization);
            checkIfChannelResponseIsValid(jsonPostResponse);
            JsonObject object = jsonPostResponse.getArray("onResponseReceivedActions").getObject(0).getObject("navigateAction").getObject("endpoint");
            String m480m = RecordTag.m480m(object, "commandMetadata", "webCommandMetadata", "webPageType", (String) null);
            String string = object.getObject("browseEndpoint").getString("browseId", "");
            if (("WEB_PAGE_TYPE_BROWSE".equalsIgnoreCase(m480m) || "WEB_PAGE_TYPE_CHANNEL".equalsIgnoreCase(m480m)) && !string.isEmpty()) {
                if (!string.startsWith("UC")) {
                    throw new ExtractionException("Redirected id is not pointing to a channel");
                }
                i++;
                str = string;
            }
        }
        jsonObject = jsonPostResponse;
        if (jsonObject == null) {
            throw new ExtractionException("Got no channel response after 3 redirects");
        }
        YoutubeParsingHelper.defaultAlertsCheck(jsonObject);
        return new TokenData((Object) jsonObject, str, 13);
    }

    public static final float getEllipsizedLeftPadding(Layout layout, int i, Paint paint) {
        float abs;
        float width;
        float lineLeft = layout.getLineLeft(i);
        ThreadLocal threadLocal = TextLayout_androidKt.SharedTextAndroidCanvas;
        if (layout.getEllipsisCount(i) <= 0 || layout.getParagraphDirection(i) != 1 || lineLeft >= 0.0f) {
            return 0.0f;
        }
        float measureText = paint.measureText("…") + (layout.getPrimaryHorizontal(layout.getEllipsisStart(i) + layout.getLineStart(i)) - lineLeft);
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i);
        if ((paragraphAlignment == null ? -1 : IndentationFixSpan_androidKt$WhenMappings.$EnumSwitchMapping$0[paragraphAlignment.ordinal()]) == 1) {
            abs = Math.abs(lineLeft);
            width = (layout.getWidth() - measureText) / 2.0f;
        } else {
            abs = Math.abs(lineLeft);
            width = layout.getWidth() - measureText;
        }
        return width + abs;
    }

    public static final float getEllipsizedRightPadding(Layout layout, int i, Paint paint) {
        float width;
        float width2;
        ThreadLocal threadLocal = TextLayout_androidKt.SharedTextAndroidCanvas;
        if (layout.getEllipsisCount(i) <= 0) {
            return 0.0f;
        }
        if (layout.getParagraphDirection(i) != -1 || layout.getWidth() >= layout.getLineRight(i)) {
            return 0.0f;
        }
        float measureText = paint.measureText("…") + (layout.getLineRight(i) - layout.getPrimaryHorizontal(layout.getEllipsisStart(i) + layout.getLineStart(i)));
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i);
        if ((paragraphAlignment != null ? IndentationFixSpan_androidKt$WhenMappings.$EnumSwitchMapping$0[paragraphAlignment.ordinal()] : -1) == 1) {
            width = layout.getWidth() - layout.getLineRight(i);
            width2 = (layout.getWidth() - measureText) / 2.0f;
        } else {
            width = layout.getWidth() - layout.getLineRight(i);
            width2 = layout.getWidth() - measureText;
        }
        return width - width2;
    }

    public static final Class getJavaClass(ClassReference classReference) {
        classReference.getClass();
        Class jClass = classReference.getJClass();
        jClass.getClass();
        return jClass;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final Class getJavaObjectType(ClassReference classReference) {
        classReference.getClass();
        Class jClass = classReference.getJClass();
        if (jClass.isPrimitive()) {
            String name = jClass.getName();
            switch (name.hashCode()) {
                case -1325958191:
                    if (name.equals("double")) {
                        return Double.class;
                    }
                    break;
                case 104431:
                    if (name.equals("int")) {
                        return Integer.class;
                    }
                    break;
                case 3039496:
                    if (name.equals("byte")) {
                        return Byte.class;
                    }
                    break;
                case 3052374:
                    if (name.equals("char")) {
                        return Character.class;
                    }
                    break;
                case 3327612:
                    if (name.equals("long")) {
                        return Long.class;
                    }
                    break;
                case 3625364:
                    if (name.equals("void")) {
                        return Void.class;
                    }
                    break;
                case 64711720:
                    if (name.equals("boolean")) {
                        return Boolean.class;
                    }
                    break;
                case 97526364:
                    if (name.equals("float")) {
                        return Float.class;
                    }
                    break;
                case 109413500:
                    if (name.equals("short")) {
                        return Short.class;
                    }
                    break;
            }
        }
        return jClass;
    }

    public static boolean isCandidate(int i, android.graphics.Rect rect, android.graphics.Rect rect2) {
        if (i == 17) {
            int i2 = rect.right;
            int i3 = rect2.right;
            if ((i2 > i3 || rect.left >= i3) && rect.left > rect2.left) {
                return true;
            }
        } else if (i == 33) {
            int i4 = rect.bottom;
            int i5 = rect2.bottom;
            if ((i4 > i5 || rect.top >= i5) && rect.top > rect2.top) {
                return true;
            }
        } else if (i == 66) {
            int i6 = rect.left;
            int i7 = rect2.left;
            if ((i6 < i7 || rect.right <= i7) && rect.right < rect2.right) {
                return true;
            }
        } else {
            if (i != 130) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return false;
            }
            int i8 = rect.top;
            int i9 = rect2.top;
            if ((i8 < i9 || rect.bottom <= i9) && rect.bottom < rect2.bottom) {
                return true;
            }
        }
        return false;
    }

    public static boolean isChannelVerified(YoutubeChannelHelper$ChannelHeader youtubeChannelHelper$ChannelHeader) {
        int ordinal = youtubeChannelHelper$ChannelHeader.headerType.ordinal();
        if (ordinal == 1) {
            return youtubeChannelHelper$ChannelHeader.json.containsKey("autoGenerated");
        }
        if (ordinal != 2) {
            JsonObject jsonObject = youtubeChannelHelper$ChannelHeader.json;
            if (ordinal != 3) {
                return YoutubeParsingHelper.isVerified(jsonObject.getArray("badges"));
            }
            JsonObject object = jsonObject.getObject("content").getObject("pageHeaderViewModel");
            JsonArray array = object.getObject("title").getObject("dynamicTextViewModel").getObject("text").getArray("attachmentRuns");
            String str = YoutubeParsingHelper.clientVersion;
            boolean anyMatch = array.streamAsJsonObjects().anyMatch(new JsonArray$$ExternalSyntheticLambda0(17));
            if (anyMatch || !object.getObject("image").containsKey("contentPreviewImageViewModel")) {
                return anyMatch;
            }
        }
        return true;
    }

    public static final SystemClock launchOperation(SystemClock systemClock, String str, Executor executor, Function0 function0) {
        Unit unit = Unit.INSTANCE;
        systemClock.getClass();
        executor.getClass();
        MutableLiveData mutableLiveData = new MutableLiveData(0);
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = Modifier.CC.class;
        try {
            executor.execute(new OperationKt$$ExternalSyntheticLambda1(systemClock, str, function0, mutableLiveData, callbackToFutureAdapter$Completer, 0));
            callbackToFutureAdapter$Completer.tag = unit;
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.delegate.setException(e);
        }
        return new SystemClock();
    }

    public static int majorAxisDistance(int i, android.graphics.Rect rect, android.graphics.Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i2 = rect.left;
            i3 = rect2.right;
        } else if (i == 33) {
            i2 = rect.top;
            i3 = rect2.bottom;
        } else if (i == 66) {
            i2 = rect2.left;
            i3 = rect.right;
        } else {
            if (i != 130) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return 0;
            }
            i2 = rect2.top;
            i3 = rect.bottom;
        }
        return Math.max(0, i2 - i3);
    }

    public static int minorAxisDistance(int i, android.graphics.Rect rect, android.graphics.Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return 0;
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }

    public static final Pair[] parseColorStops(Element element) {
        List list = SequencesKt.toList(new FilteringSequence(new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(new XmlVectorParserKt$childrenSequence$1(element, null), 4), true, XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1.INSTANCE$1), true, new ZipFilesKt$$ExternalSyntheticLambda3(13)));
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                Jsoup.throwIndexOverflow();
                throw null;
            }
            Element element2 = (Element) obj;
            float f = i;
            int size = list.size() - 1;
            if (size < 1) {
                size = 1;
            }
            float f2 = f / size;
            String attributeOrNull = attributeOrNull(element2, "offset");
            if (attributeOrNull != null) {
                f2 = Float.parseFloat(attributeOrNull);
            }
            String attributeOrNull2 = attributeOrNull(element2, TtmlNode.ATTR_TTS_COLOR);
            Pair pair = attributeOrNull2 != null ? new Pair(Float.valueOf(f2), new Color(Brush.Color(BundleKt.parseColorValue(attributeOrNull2)))) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
            i = i2;
        }
        if (arrayList.isEmpty()) {
            String attributeOrNull3 = attributeOrNull(element, "startColor");
            Integer valueOf = attributeOrNull3 != null ? Integer.valueOf(BundleKt.parseColorValue(attributeOrNull3)) : null;
            String attributeOrNull4 = attributeOrNull(element, "centerColor");
            Integer valueOf2 = attributeOrNull4 != null ? Integer.valueOf(BundleKt.parseColorValue(attributeOrNull4)) : null;
            String attributeOrNull5 = attributeOrNull(element, "endColor");
            Integer valueOf3 = attributeOrNull5 != null ? Integer.valueOf(BundleKt.parseColorValue(attributeOrNull5)) : null;
            if (valueOf != null) {
                arrayList.add(new Pair(Float.valueOf(0.0f), new Color(Brush.Color(valueOf.intValue()))));
            }
            if (valueOf2 != null) {
                arrayList.add(new Pair(Float.valueOf(0.5f), new Color(Brush.Color(valueOf2.intValue()))));
            }
            if (valueOf3 != null) {
                arrayList.add(new Pair(Float.valueOf(1.0f), new Color(Brush.Color(valueOf3.intValue()))));
            }
        }
        return (Pair[]) arrayList.toArray(new Pair[0]);
    }

    public static final ShaderBrush parseElementBrush(Element element) {
        Object obj;
        String attributeOrNull;
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(new XmlVectorParserKt$childrenSequence$1(element, null), 4), true, XmlVectorParserKt$apptAttr$$inlined$filterIsInstance$1.INSTANCE$2));
        while (true) {
            if (!filteringSequence$iterator$1.hasNext()) {
                obj = null;
                break;
            }
            obj = filteringSequence$iterator$1.next();
            String nodeName = ((Node) ((ConnectionPool) ((Element) obj)).delegate).getNodeName();
            nodeName.getClass();
            if (nodeName.equals("gradient")) {
                break;
            }
        }
        Element element2 = (Element) obj;
        if (element2 != null && (attributeOrNull = attributeOrNull(element2, "type")) != null) {
            int hashCode = attributeOrNull.hashCode();
            int i = 0;
            if (hashCode != -1102672091) {
                if (hashCode != -938579425) {
                    if (hashCode == 109850348 && attributeOrNull.equals("sweep")) {
                        Pair[] parseColorStops = parseColorStops(element2);
                        Pair[] pairArr = (Pair[]) Arrays.copyOf(parseColorStops, parseColorStops.length);
                        String attributeOrNull2 = attributeOrNull(element2, "centerX");
                        float parseFloat = attributeOrNull2 != null ? Float.parseFloat(attributeOrNull2) : 0.0f;
                        long floatToRawIntBits = (Float.floatToRawIntBits(parseFloat) << 32) | (Float.floatToRawIntBits(attributeOrNull(element2, "centerY") != null ? Float.parseFloat(r2) : 0.0f) & 4294967295L);
                        ArrayList arrayList = new ArrayList(pairArr.length);
                        for (Pair pair : pairArr) {
                            arrayList.add(new Color(((Color) pair.getSecond()).value));
                        }
                        int length = pairArr.length;
                        ArrayList arrayList2 = new ArrayList(length);
                        while (i < length) {
                            arrayList2.add(Float.valueOf(((Number) pairArr[i].getFirst()).floatValue()));
                            i++;
                        }
                        return new SweepGradient(floatToRawIntBits, arrayList, arrayList2);
                    }
                } else if (attributeOrNull.equals("radial")) {
                    Pair[] parseColorStops2 = parseColorStops(element2);
                    Pair[] pairArr2 = (Pair[]) Arrays.copyOf(parseColorStops2, parseColorStops2.length);
                    String attributeOrNull3 = attributeOrNull(element2, "centerX");
                    float parseFloat2 = attributeOrNull3 != null ? Float.parseFloat(attributeOrNull3) : 0.0f;
                    long floatToRawIntBits2 = (Float.floatToRawIntBits(parseFloat2) << 32) | (Float.floatToRawIntBits(attributeOrNull(element2, "centerY") != null ? Float.parseFloat(r3) : 0.0f) & 4294967295L);
                    String attributeOrNull4 = attributeOrNull(element2, "gradientRadius");
                    float parseFloat3 = attributeOrNull4 != null ? Float.parseFloat(attributeOrNull4) : 0.0f;
                    String attributeOrNull5 = attributeOrNull(element2, "tileMode");
                    int parseTileMode = attributeOrNull5 != null ? BundleKt.parseTileMode(attributeOrNull5) : 0;
                    ArrayList arrayList3 = new ArrayList(pairArr2.length);
                    for (Pair pair2 : pairArr2) {
                        arrayList3.add(new Color(((Color) pair2.getSecond()).value));
                    }
                    int length2 = pairArr2.length;
                    ArrayList arrayList4 = new ArrayList(length2);
                    while (i < length2) {
                        arrayList4.add(Float.valueOf(((Number) pairArr2[i].getFirst()).floatValue()));
                        i++;
                    }
                    return new RadialGradient(arrayList3, arrayList4, floatToRawIntBits2, parseFloat3, parseTileMode);
                }
            } else if (attributeOrNull.equals("linear")) {
                Pair[] parseColorStops3 = parseColorStops(element2);
                Pair[] pairArr3 = (Pair[]) Arrays.copyOf(parseColorStops3, parseColorStops3.length);
                String attributeOrNull6 = attributeOrNull(element2, "startX");
                float parseFloat4 = attributeOrNull6 != null ? Float.parseFloat(attributeOrNull6) : 0.0f;
                long floatToRawIntBits3 = (Float.floatToRawIntBits(parseFloat4) << 32) | (Float.floatToRawIntBits(attributeOrNull(element2, "startY") != null ? Float.parseFloat(r3) : 0.0f) & 4294967295L);
                String attributeOrNull7 = attributeOrNull(element2, "endX");
                float parseFloat5 = attributeOrNull7 != null ? Float.parseFloat(attributeOrNull7) : 0.0f;
                long floatToRawIntBits4 = (Float.floatToRawIntBits(parseFloat5) << 32) | (4294967295L & Float.floatToRawIntBits(attributeOrNull(element2, "endY") != null ? Float.parseFloat(r3) : 0.0f));
                String attributeOrNull8 = attributeOrNull(element2, "tileMode");
                int parseTileMode2 = attributeOrNull8 != null ? BundleKt.parseTileMode(attributeOrNull8) : 0;
                ArrayList arrayList5 = new ArrayList(pairArr3.length);
                for (Pair pair3 : pairArr3) {
                    arrayList5.add(new Color(((Color) pair3.getSecond()).value));
                }
                int length3 = pairArr3.length;
                ArrayList arrayList6 = new ArrayList(length3);
                while (i < length3) {
                    arrayList6.add(Float.valueOf(((Number) pairArr3[i].getFirst()).floatValue()));
                    i++;
                }
                return new LinearGradient(arrayList5, arrayList6, floatToRawIntBits3, floatToRawIntBits4, parseTileMode2);
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0279  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void parseVectorNodes(org.jetbrains.compose.resources.vector.xmldom.Element r40, androidx.compose.ui.graphics.vector.ImageVector.Builder r41, okhttp3.Headers.Builder r42) {
        /*
            Method dump skipped, instructions count: 854
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.parseVectorNodes(org.jetbrains.compose.resources.vector.xmldom.Element, androidx.compose.ui.graphics.vector.ImageVector$Builder, okhttp3.Headers$Builder):void");
    }

    public static void postDelayed(Handler handler, Runnable runnable, String str, long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            PackageManagerWrapperKt.postDelayed(handler, runnable, str, j);
            return;
        }
        Message obtain = Message.obtain(handler, runnable);
        obtain.obj = str;
        handler.sendMessageDelayed(obtain, j);
    }

    public static String resolveChannelId(String str) {
        String[] split = str.split("/");
        if (split[0].startsWith("UC")) {
            return split[0];
        }
        if (!split[0].equals("channel")) {
            String concat = "https://www.youtube.com/".concat(str);
            JsonObject jsonObject = new JsonObject();
            String str2 = "";
            for (int i = 0; concat != null && i < 3; i++) {
                ContentCountry contentCountry = ContentCountry.DEFAULT;
                Localization localization = Localization.DEFAULT;
                JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(localization, contentCountry);
                prepareDesktopJsonBuilder.value(concat, "url");
                JsonObject jsonPostResponse = YoutubeParsingHelper.getJsonPostResponse("navigation/resolve_url", Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8), localization);
                checkIfChannelResponseIsValid(jsonPostResponse);
                jsonObject = jsonPostResponse.getObject("endpoint");
                str2 = RecordTag.m480m(jsonObject, "commandMetadata", "webCommandMetadata", "webPageType", (String) null);
                concat = "WEB_PAGE_TYPE_UNKNOWN".equals(str2) ? jsonObject.getObject("urlEndpoint").getString("url", null) : null;
            }
            String string = jsonObject.getObject("browseEndpoint").getString("browseId", "");
            if (("WEB_PAGE_TYPE_BROWSE".equalsIgnoreCase(str2) || "WEB_PAGE_TYPE_CHANNEL".equalsIgnoreCase(str2)) && !string.isEmpty()) {
                if (string.startsWith("UC")) {
                    return string;
                }
                throw new ExtractionException("Redirected id is not pointing to a channel");
            }
            if (split.length < 2) {
                throw new ExtractionException("Failed to resolve channelId for ".concat(str));
            }
        }
        return split[1];
    }

    public static void setTooltipText(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            TooltipCompat$Api26Impl.setTooltipText(view, charSequence);
            return;
        }
        TooltipCompatHandler tooltipCompatHandler = TooltipCompatHandler.sPendingHandler;
        if (tooltipCompatHandler != null && tooltipCompatHandler.mAnchor == view) {
            TooltipCompatHandler.setPendingHandler(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new TooltipCompatHandler(view, charSequence);
            return;
        }
        TooltipCompatHandler tooltipCompatHandler2 = TooltipCompatHandler.sActiveHandler;
        if (tooltipCompatHandler2 != null && tooltipCompatHandler2.mAnchor == view) {
            tooltipCompatHandler2.hide();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    public static final Response stripBody(Response response) {
        response.getClass();
        Response.Builder newBuilder = response.newBuilder();
        ResponseBody responseBody = response.body;
        newBuilder.body = new UnreadableResponseBody(responseBody.contentType(), responseBody.contentLength());
        return newBuilder.build();
    }

    public static final ArrayList toArrayListUnsafe(List list) {
        list.getClass();
        return list instanceof ArrayList ? (ArrayList) list : new ArrayList(list);
    }

    public static final boolean tryAttachComposeStackTrace(Throwable th, Function0 function0) {
        List asList;
        Object invoke;
        th.getClass();
        Integer num = JDK7PlatformImplementations$ReflectSdkVersion.sdkVersion;
        DiagnosticComposeException diagnosticComposeException = null;
        if (num == null || num.intValue() >= 19) {
            Throwable[] suppressed = th.getSuppressed();
            suppressed.getClass();
            asList = Arrays.asList(suppressed);
            asList.getClass();
        } else {
            Method method = PlatformImplementations$ReflectThrowable.getSuppressed;
            if (method == null || (invoke = method.invoke(th, null)) == null) {
                asList = EmptyList.INSTANCE;
            } else {
                asList = Arrays.asList((Throwable[]) invoke);
                asList.getClass();
            }
        }
        int size = asList.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            if (((Throwable) asList.get(i)) instanceof DiagnosticComposeException) {
                return false;
            }
        }
        try {
            ComposeStackTrace composeStackTrace = (ComposeStackTrace) function0.invoke();
            if (composeStackTrace != null) {
                boolean z2 = composeStackTrace.hasSourceInformation;
                List list = composeStackTrace.frames;
                if (z2) {
                    int size2 = list.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((ComposeStackTraceFrame) list.get(i2)).getClass();
                    }
                } else if (!list.isEmpty()) {
                    z = true;
                }
            }
            if (z) {
                composeStackTrace.getClass();
                diagnosticComposeException = new DiagnosticComposeException(composeStackTrace);
            }
        } catch (Throwable th2) {
            diagnosticComposeException = th2;
        }
        if (diagnosticComposeException != null) {
            ResultKt.addSuppressed(th, diagnosticComposeException);
        }
        return z;
    }

    public abstract String decodeUtf8(byte[] bArr, int i, int i2);

    public abstract int encodeUtf8(String str, byte[] bArr, int i, int i2);

    public abstract boolean isValidUtf8(byte[] bArr, int i, int i2);

    public abstract void onFontRetrievalFailed(int i);

    public abstract void onFontRetrieved(Typeface typeface, boolean z);
}
