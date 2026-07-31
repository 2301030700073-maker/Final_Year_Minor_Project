package okio.internal;

import android.content.pm.PackageManager;
import android.location.Location;
import android.net.Uri;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.input.pointer.HoverIconModifierNode$findOverridingAncestorNode$1;
import androidx.datastore.core.SimpleActor$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.ImageLoader$Builder;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.textfield.TextInputLayout;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.hcaptcha.sdk.HCaptcha;
import com.hcaptcha.sdk.HCaptchaCompat;
import com.hcaptcha.sdk.HCaptchaConfig;
import com.hcaptcha.sdk.HCaptchaError;
import com.hcaptcha.sdk.HCaptchaException;
import com.hcaptcha.sdk.HCaptchaHtml;
import com.hcaptcha.sdk.HCaptchaInternalConfig;
import com.hcaptcha.sdk.HCaptchaTheme;
import com.hcaptcha.sdk.IHCaptchaVerifier;
import com.hcaptcha.sdk.tasks.OnFailureListener;
import com.hcaptcha.sdk.tasks.OnOpenListener;
import com.hcaptcha.sdk.tasks.OnSuccessListener;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValueFactory;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ErrorValue$ErrorValueWithMessage;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.TypedArrayValue;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.text.StringsKt;
import kotlinx.coroutines.internal.Symbol;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.platform.Platform;
import okhttp3.tls.HeldCertificate;
import okhttp3.tls.internal.InsecureAndroidTrustManager;
import okhttp3.tls.internal.TlsUtil;
import okio.Buffer;
import okio.Path;
import okio.Segment;
import okio.SegmentPool;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.maplibre.android.maps.Style;
import org.maplibre.android.style.expressions.Expression;
import org.maplibre.android.style.layers.CircleLayer;
import org.maplibre.android.style.layers.Layer;
import org.maplibre.android.style.layers.LayoutPropertyValue;
import org.maplibre.android.style.layers.PaintPropertyValue;
import org.maplibre.android.style.layers.SymbolLayer;
import org.maplibre.android.style.sources.GeoJsonSource;
import org.maplibre.geojson.Feature;
import org.maplibre.geojson.Point;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.captcha.HCaptchaHelper$Callback;
import org.wikipedia.captcha.HCaptchaHelper$MakeHCaptchaDialogCancelable;
import org.wikipedia.databinding.ActivityGalleryBinding;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.diff.DiffLineView;
import org.wikipedia.games.onthisday.OnThisDayGameArticleBottomSheet;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.RemoteConfig$RemoteConfigAndroidV1;
import org.wikipedia.settings.RemoteConfig$RemoteConfigHCaptcha;
import org.wikipedia.talk.TalkReplyActivity;
import org.wikipedia.talk.db.TalkTemplate;
import org.wikipedia.util.log.L;
import org.wikipedia.views.TextInputDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultSocket implements KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor, ClassDataFinder, Socket, LongPressMenu.Callback {
    public static DefaultSocket INSTANCE;
    public final /* synthetic */ int $r8$classId;
    public Object closeBits;
    public Object sink;
    public Object socket;
    public Object source;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SocketSink implements Sink {
        public final OutputStream outputStream;
        public final SocketAsyncTimeout timeout;

        public SocketSink() {
            java.net.Socket socket = (java.net.Socket) DefaultSocket.this.socket;
            this.outputStream = socket.getOutputStream();
            this.timeout = new SocketAsyncTimeout(socket);
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            int i;
            OutputStream outputStream = this.outputStream;
            DefaultSocket defaultSocket = DefaultSocket.this;
            SocketAsyncTimeout socketAsyncTimeout = this.timeout;
            socketAsyncTimeout.enter();
            try {
                AtomicInteger atomicInteger = (AtomicInteger) defaultSocket.closeBits;
                java.net.Socket socket = (java.net.Socket) defaultSocket.socket;
                atomicInteger.getClass();
                while (true) {
                    int i2 = atomicInteger.get();
                    if ((i2 & 1) != 0) {
                        i = 0;
                        break;
                    }
                    int i3 = i2 | 1;
                    if (atomicInteger.compareAndSet(i2, i3)) {
                        i = i3;
                        break;
                    }
                }
                if (i != 0) {
                    if (i != 3) {
                        if (!socket.isClosed() && !socket.isOutputShutdown()) {
                            outputStream.flush();
                            try {
                                socket.shutdownOutput();
                            } catch (UnsupportedOperationException unused) {
                                outputStream.close();
                            }
                        }
                        return;
                    }
                    socket.close();
                    if (socketAsyncTimeout.exit()) {
                        throw socketAsyncTimeout.newTimeoutException(null);
                    }
                }
            } catch (IOException e) {
                if (!socketAsyncTimeout.exit()) {
                    throw e;
                }
                throw socketAsyncTimeout.newTimeoutException(e);
            } finally {
                socketAsyncTimeout.exit();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public final void flush() {
            SocketAsyncTimeout socketAsyncTimeout = this.timeout;
            socketAsyncTimeout.enter();
            try {
                this.outputStream.flush();
                if (socketAsyncTimeout.exit()) {
                    throw socketAsyncTimeout.newTimeoutException(null);
                }
            } catch (IOException e) {
                if (!socketAsyncTimeout.exit()) {
                    throw e;
                }
                throw socketAsyncTimeout.newTimeoutException(e);
            } finally {
                socketAsyncTimeout.exit();
            }
        }

        @Override // okio.Sink
        public final Timeout timeout() {
            return this.timeout;
        }

        public final String toString() {
            return "sink(" + ((java.net.Socket) DefaultSocket.this.socket) + ')';
        }

        @Override // okio.Sink
        public final void write(Buffer buffer, long j) {
            HttpUrl.Companion.checkOffsetAndCount(buffer.size, 0L, j);
            while (j > 0) {
                SocketAsyncTimeout socketAsyncTimeout = this.timeout;
                socketAsyncTimeout.throwIfReached();
                Segment segment = buffer.head;
                segment.getClass();
                int min = (int) Math.min(j, segment.limit - segment.pos);
                socketAsyncTimeout.enter();
                try {
                    try {
                        this.outputStream.write(segment.data, segment.pos, min);
                        if (socketAsyncTimeout.exit()) {
                            throw socketAsyncTimeout.newTimeoutException(null);
                        }
                        int i = segment.pos + min;
                        segment.pos = i;
                        long j2 = min;
                        j -= j2;
                        buffer.size -= j2;
                        if (i == segment.limit) {
                            buffer.head = segment.pop();
                            SegmentPool.recycle(segment);
                        }
                    } catch (IOException e) {
                        if (!socketAsyncTimeout.exit()) {
                            throw e;
                        }
                        throw socketAsyncTimeout.newTimeoutException(e);
                    }
                } catch (Throwable th) {
                    socketAsyncTimeout.exit();
                    throw th;
                }
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SocketSource implements Source {
        public final InputStream inputStream;
        public final SocketAsyncTimeout timeout;

        public SocketSource() {
            java.net.Socket socket = (java.net.Socket) DefaultSocket.this.socket;
            this.inputStream = socket.getInputStream();
            this.timeout = new SocketAsyncTimeout(socket);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            int i;
            DefaultSocket defaultSocket = DefaultSocket.this;
            SocketAsyncTimeout socketAsyncTimeout = this.timeout;
            socketAsyncTimeout.enter();
            try {
                AtomicInteger atomicInteger = (AtomicInteger) defaultSocket.closeBits;
                java.net.Socket socket = (java.net.Socket) defaultSocket.socket;
                atomicInteger.getClass();
                while (true) {
                    int i2 = atomicInteger.get();
                    if ((i2 & 2) != 0) {
                        i = 0;
                        break;
                    }
                    int i3 = i2 | 2;
                    if (atomicInteger.compareAndSet(i2, i3)) {
                        i = i3;
                        break;
                    }
                }
                if (i != 0) {
                    if (i == 3) {
                        socket.close();
                    } else {
                        if (socket.isClosed() || socket.isInputShutdown()) {
                            return;
                        }
                        try {
                            socket.shutdownInput();
                        } catch (UnsupportedOperationException unused) {
                            this.inputStream.close();
                        }
                    }
                    if (socketAsyncTimeout.exit()) {
                        throw socketAsyncTimeout.newTimeoutException(null);
                    }
                }
            } catch (IOException e) {
                if (!socketAsyncTimeout.exit()) {
                    throw e;
                }
                throw socketAsyncTimeout.newTimeoutException(e);
            } finally {
                socketAsyncTimeout.exit();
            }
        }

        @Override // okio.Source
        public final long read(Buffer buffer, long j) {
            buffer.getClass();
            if (j == 0) {
                return 0L;
            }
            if (j < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("byteCount < 0: ", j));
                return 0L;
            }
            SocketAsyncTimeout socketAsyncTimeout = this.timeout;
            socketAsyncTimeout.throwIfReached();
            Segment writableSegment$okio = buffer.writableSegment$okio(1);
            int min = (int) Math.min(j, 8192 - writableSegment$okio.limit);
            try {
                socketAsyncTimeout.enter();
                try {
                    int read = this.inputStream.read(writableSegment$okio.data, writableSegment$okio.limit, min);
                    if (socketAsyncTimeout.exit()) {
                        throw socketAsyncTimeout.newTimeoutException(null);
                    }
                    if (read != -1) {
                        writableSegment$okio.limit += read;
                        long j2 = read;
                        buffer.size += j2;
                        return j2;
                    }
                    if (writableSegment$okio.pos != writableSegment$okio.limit) {
                        return -1L;
                    }
                    buffer.head = writableSegment$okio.pop();
                    SegmentPool.recycle(writableSegment$okio);
                    return -1L;
                } catch (IOException e) {
                    if (socketAsyncTimeout.exit()) {
                        throw socketAsyncTimeout.newTimeoutException(e);
                    }
                    throw e;
                } finally {
                    socketAsyncTimeout.exit();
                }
            } catch (AssertionError e2) {
                if (_JavaIoKt.isAndroidGetsocknameError(e2)) {
                    throw new IOException(e2);
                }
                throw e2;
            }
        }

        @Override // okio.Source
        public final Timeout timeout() {
            return this.timeout;
        }

        public final String toString() {
            return "source(" + ((java.net.Socket) DefaultSocket.this.socket) + ')';
        }
    }

    public DefaultSocket(DeserializedClassDescriptor deserializedClassDescriptor) {
        this.$r8$classId = 3;
        this.sink = deserializedClassDescriptor;
        List list = deserializedClassDescriptor.classProto.enumEntry_;
        list.getClass();
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity < 16 ? 16 : mapCapacity);
        for (Object obj : list) {
            linkedHashMap.put(Room.getName((NameResolver) deserializedClassDescriptor.c.hCaptchaException, ((ProtoBuf$EnumEntry) obj).name_), obj);
        }
        this.socket = linkedHashMap;
        DeserializedClassDescriptor deserializedClassDescriptor2 = (DeserializedClassDescriptor) this.sink;
        this.closeBits = ((LockBasedStorageManager) ((ActivityGalleryBinding) deserializedClassDescriptor2.c.result).captionEditButton).createMemoizedFunctionWithNullableValues(new SimpleActor$1(18, this, deserializedClassDescriptor2));
        LockBasedStorageManager lockBasedStorageManager = (LockBasedStorageManager) ((ActivityGalleryBinding) ((DeserializedClassDescriptor) this.sink).c.result).captionEditButton;
        AndroidLeakFixes$Companion$onDecorViewReady$1 androidLeakFixes$Companion$onDecorViewReady$1 = new AndroidLeakFixes$Companion$onDecorViewReady$1(14, this);
        lockBasedStorageManager.getClass();
        this.source = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, androidLeakFixes$Companion$onDecorViewReady$1);
    }

    public static DefaultSocket inflate(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(R.layout.view_edit_history_empty_messages, viewGroup, false);
        int i = R.id.empty_search_message;
        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.empty_search_message);
        if (textView != null) {
            i = R.id.search_empty_container;
            LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.search_empty_container);
            if (linearLayout != null) {
                i = R.id.search_empty_text;
                TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.search_empty_text);
                if (textView2 != null) {
                    return new DefaultSocket((LinearLayout) inflate, textView, linearLayout, textView2, 22);
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    public void addLayers(MultipartBody.Builder builder) {
        HashSet hashSet = (HashSet) this.closeBits;
        SymbolLayer generateLayer = LoginClient.generateLayer("mapbox-location-bearing-layer");
        Style style = (Style) builder.boundary;
        String str = (String) builder.type;
        if (str != null) {
            style.addLayerAbove(generateLayer, str);
        } else {
            String str2 = (String) builder.parts;
            if (str2 != null) {
                style.addLayerBelow(generateLayer, str2);
            } else {
                style.addLayer(generateLayer);
            }
        }
        hashSet.add(generateLayer.getId());
        SymbolLayer generateLayer2 = LoginClient.generateLayer("mapbox-location-foreground-layer");
        ((Style) this.socket).addLayerBelow(generateLayer2, "mapbox-location-bearing-layer");
        hashSet.add(generateLayer2.getId());
        SymbolLayer generateLayer3 = LoginClient.generateLayer("mapbox-location-background-layer");
        ((Style) this.socket).addLayerBelow(generateLayer3, "mapbox-location-foreground-layer");
        hashSet.add(generateLayer3.getId());
        SymbolLayer generateLayer4 = LoginClient.generateLayer("mapbox-location-shadow-layer");
        ((Style) this.socket).addLayerBelow(generateLayer4, "mapbox-location-background-layer");
        hashSet.add(generateLayer4.getId());
        CircleLayer circleLayer = new CircleLayer("mapbox-location-accuracy-layer", "mapbox-location-source");
        circleLayer.setProperties(new PaintPropertyValue("circle-radius", Expression.get("mapbox-property-accuracy-radius")), new PaintPropertyValue("circle-color", Expression.get("mapbox-property-accuracy-color")), new PaintPropertyValue("circle-opacity", Expression.get("mapbox-property-accuracy-alpha")), new PaintPropertyValue("circle-stroke-color", Expression.get("mapbox-property-accuracy-color")), new PaintPropertyValue("circle-pitch-alignment", "map"));
        ((Style) this.socket).addLayerBelow(circleLayer, "mapbox-location-background-layer");
        hashSet.add(circleLayer.getId());
        CircleLayer circleLayer2 = new CircleLayer("mapbox-location-pulsing-circle-layer", "mapbox-location-source");
        circleLayer2.setProperties(new PaintPropertyValue("circle-pitch-alignment", "map"));
        ((Style) this.socket).addLayerBelow(circleLayer2, "mapbox-location-accuracy-layer");
        hashSet.add(circleLayer2.getId());
    }

    public void adjustPulsingCircleLayerVisibility(boolean z) {
        setLayerVisibility("mapbox-location-pulsing-circle-layer", z);
    }

    public FormBody.Builder build() {
        List immutableList = _UtilJvmKt.toImmutableList((ArrayList) this.sink);
        HeldCertificate heldCertificate = (HeldCertificate) this.socket;
        if (heldCertificate != null && heldCertificate.keyPair.getPrivate().getFormat() == null) {
            throw new KeyStoreException("unable to support unencodable private key");
        }
        X509Certificate[] x509CertificateArr = (X509Certificate[]) this.closeBits;
        boolean z = false;
        if (x509CertificateArr == null) {
            x509CertificateArr = new X509Certificate[0];
        }
        X509Certificate[] x509CertificateArr2 = (X509Certificate[]) Arrays.copyOf(x509CertificateArr, x509CertificateArr.length);
        char[] cArr = TlsUtil.password;
        KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        X509TrustManager x509TrustManager = null;
        keyStore.load(null, cArr);
        if (heldCertificate != null) {
            Certificate[] certificateArr = new Certificate[x509CertificateArr2.length + 1];
            certificateArr[0] = heldCertificate.certificate;
            ArraysKt___ArraysKt.copyInto$default(x509CertificateArr2, certificateArr, 0, 0, 12);
            keyStore.setKeyEntry("private", heldCertificate.keyPair.getPrivate(), cArr, certificateArr);
        }
        KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(Intrinsics.areEqual(keyStore.getProvider().getName(), "BC") ? "PKIX" : KeyManagerFactory.getDefaultAlgorithm());
        keyManagerFactory.init(keyStore, cArr);
        KeyManager[] keyManagers = keyManagerFactory.getKeyManagers();
        keyManagers.getClass();
        if (keyManagers.length == 1) {
            KeyManager keyManager = keyManagers[0];
            if (keyManager instanceof X509KeyManager) {
                X509KeyManager x509KeyManager = (X509KeyManager) keyManager;
                ArrayList arrayList = (ArrayList) this.source;
                KeyStore keyStore2 = KeyStore.getInstance(KeyStore.getDefaultType());
                keyStore2.load(null, TlsUtil.password);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    keyStore2.setCertificateEntry(Animation.CC.m(i, "cert_"), (Certificate) arrayList.get(i));
                }
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore2);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                trustManagers.getClass();
                if (trustManagers.length == 1) {
                    TrustManager trustManager = trustManagers[0];
                    if (trustManager instanceof X509TrustManager) {
                        x509TrustManager = (X509TrustManager) trustManager;
                        if (!immutableList.isEmpty()) {
                            Platform platform = Platform.platform;
                            x509TrustManager = new InsecureAndroidTrustManager(x509TrustManager, immutableList);
                        }
                        return new FormBody.Builder(22, x509KeyManager, x509TrustManager, z);
                    }
                }
                String arrays = Arrays.toString(trustManagers);
                arrays.getClass();
                ContextsKt$$ExternalSyntheticBUOutline0.m791m((Object) "Unexpected trust managers: ".concat(arrays));
                return new FormBody.Builder(22, x509KeyManager, x509TrustManager, z);
            }
        }
        String arrays2 = Arrays.toString(keyManagers);
        arrays2.getClass();
        ContextsKt$$ExternalSyntheticBUOutline0.m791m((Object) "Unexpected key managers:".concat(arrays2));
        return null;
    }

    public void cameraBearingUpdated(double d) {
        ((Feature) this.source).addNumberProperty("mapbox-property-gps-bearing", Float.valueOf((float) d));
        refreshSource();
    }

    public void cameraTiltUpdated(double d) {
        JsonArray jsonArray = new JsonArray();
        Float valueOf = Float.valueOf(RecyclerView.DECELERATION_RATE);
        jsonArray.add(valueOf);
        jsonArray.add(Float.valueOf((float) ((-0.05d) * d)));
        ((Feature) this.source).addProperty("mapbox-property-foreground-icon-offset", jsonArray);
        JsonArray jsonArray2 = new JsonArray();
        jsonArray2.add(valueOf);
        jsonArray2.add(Float.valueOf((float) (d * 0.05d)));
        ((Feature) this.source).addProperty("mapbox-property-shadow-icon-offset", jsonArray2);
        refreshSource();
    }

    public void cleanup() {
        IHCaptchaVerifier iHCaptchaVerifier;
        BaseActivity baseActivity = (BaseActivity) this.socket;
        if (!baseActivity.isDestroyed()) {
            baseActivity.getWindow().getDecorView().removeCallbacks((HCaptchaHelper$MakeHCaptchaDialogCancelable) this.sink);
        }
        HCaptcha hCaptcha = (HCaptcha) this.source;
        if (hCaptcha != null) {
            ((CopyOnWriteArrayList) hCaptcha.onSuccessListeners).clear();
            ((CopyOnWriteArrayList) hCaptcha.onFailureListeners).clear();
            ((CopyOnWriteArrayList) hCaptcha.onOpenListeners).clear();
        }
        HCaptcha hCaptcha2 = (HCaptcha) this.source;
        if (hCaptcha2 != null && (iHCaptchaVerifier = (IHCaptchaVerifier) hCaptcha2.captchaVerifier) != null) {
            iHCaptchaVerifier.reset$1();
            hCaptcha2.captchaVerifier = null;
        }
        this.source = null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder
    public ClassData findClassData(ClassId classId) {
        classId.getClass();
        ProtoBuf$Class protoBuf$Class = (ProtoBuf$Class) ((LinkedHashMap) this.sink).get(classId);
        if (protoBuf$Class == null) {
            return null;
        }
        return new ClassData((FormBody.Builder) this.socket, protoBuf$Class, (BinaryVersion) this.closeBits, (SourceElement) ((HoverIconModifierNode$findOverridingAncestorNode$1) this.source).invoke(classId));
    }

    @Override // okio.Socket
    public Sink getSink() {
        return (SocketSink) this.sink;
    }

    @Override // okio.Socket
    public Source getSource() {
        return (SocketSource) this.source;
    }

    public void hide() {
        Iterator it = ((HashSet) this.closeBits).iterator();
        while (it.hasNext()) {
            setLayerVisibility((String) it.next(), false);
        }
    }

    public boolean isRecursion(DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor) {
        if (((DeserializedTypeAliasDescriptor) this.closeBits).equals(deserializedTypeAliasDescriptor)) {
            return true;
        }
        DefaultSocket defaultSocket = (DefaultSocket) this.socket;
        return defaultSocket != null ? defaultSocket.isRecursion(deserializedTypeAliasDescriptor) : false;
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onAddRequest(HistoryEntry historyEntry, boolean z) {
        historyEntry.getClass();
        List list = ReadingListBehaviorsUtil.allReadingLists;
        ReadingListBehaviorsUtil.addToDefaultList(((OnThisDayGameArticleBottomSheet) this.socket).requireActivity(), (PageTitle) this.closeBits, z, Constants.InvokeSource.ON_THIS_DAY_GAME_ACTIVITY, null);
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onMoveRequest(ReadingListPage readingListPage, HistoryEntry historyEntry) {
        historyEntry.getClass();
        if (readingListPage != null) {
            OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet = (OnThisDayGameArticleBottomSheet) this.socket;
            PageTitle pageTitle = (PageTitle) this.closeBits;
            List list = ReadingListBehaviorsUtil.allReadingLists;
            ReadingListBehaviorsUtil.moveToList(onThisDayGameArticleBottomSheet.requireActivity(), readingListPage.listId, pageTitle, Constants.InvokeSource.ON_THIS_DAY_GAME_ACTIVITY, true, null);
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onOpenInNewTab(HistoryEntry historyEntry) {
        historyEntry.getClass();
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public /* bridge */ void onOpenInPlaces(HistoryEntry historyEntry, Location location) {
        Service.CC.$default$onOpenInPlaces(historyEntry, location);
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onOpenLink(HistoryEntry historyEntry) {
        historyEntry.getClass();
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onRemoveRequest() {
        OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet = (OnThisDayGameArticleBottomSheet) this.socket;
        ArrayList arrayList = onThisDayGameArticleBottomSheet.getViewModel$1().savedPages;
        PageSummary pageSummary = (PageSummary) this.source;
        arrayList.remove(pageSummary);
        ((ImageView) this.sink).setImageResource(R.drawable.ic_bookmark_border_white_24dp);
        OnThisDayGameArticleBottomSheet.Callback callback = onThisDayGameArticleBottomSheet.callback();
        if (callback != null) {
            ((OnThisDayGameResultFragment) callback).onPageBookmarkChanged(pageSummary);
        }
    }

    public void onTextChanged(String str, TextInputDialog textInputDialog) {
        DefaultSocket defaultSocket = (DefaultSocket) textInputDialog.binding;
        DefaultSocket defaultSocket2 = (DefaultSocket) ((TextInputDialog) this.socket).binding;
        if (((RadioButton) defaultSocket2.closeBits).isChecked()) {
            ((TextInputLayout) defaultSocket.sink).setError(null);
            textInputDialog.setPositiveButtonEnabled$1(true);
            return;
        }
        String obj = StringsKt.trim(str).toString();
        TalkReplyActivity talkReplyActivity = (TalkReplyActivity) this.closeBits;
        if (obj.length() == 0) {
            ((TextInputLayout) defaultSocket.sink).setError(null);
            textInputDialog.setPositiveButtonEnabled$1(false);
            return;
        }
        ArrayList arrayList = talkReplyActivity.getViewModel().talkTemplatesList;
        if (arrayList == null || !arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((TalkTemplate) it.next()).subject, obj)) {
                    if (((RadioButton) defaultSocket2.closeBits).isChecked()) {
                        return;
                    }
                    ((TextInputLayout) defaultSocket.sink).setError(((AlertController.AlertParams) textInputDialog.array).mContext.getString(R.string.talk_subject_duplicate));
                    textInputDialog.setPositiveButtonEnabled$1(false);
                    return;
                }
            }
        }
        ((TextInputLayout) defaultSocket.sink).setError(null);
        textInputDialog.setPositiveButtonEnabled$1(true);
    }

    public void refreshSource() {
        Style style = (Style) this.socket;
        if (style.fullyLoaded && ((GeoJsonSource) style.getSourceAs()) != null) {
            ((GeoJsonSource) this.sink).setGeoJson((Feature) this.source);
        }
    }

    public void setGpsBearing(Float f) {
        f.floatValue();
        ((Feature) this.source).addNumberProperty("mapbox-property-gps-bearing", f);
        refreshSource();
    }

    public void setLayerVisibility(String str, boolean z) {
        Layer layer;
        Style style = (Style) this.socket;
        if (style.fullyLoaded && (layer = style.getLayer(str)) != null) {
            String str2 = z ? "visible" : "none";
            Layer.checkThread();
            if (((String) layer.nativeGetVisibility()).equals(str2)) {
                return;
            }
            layer.setProperties(new LayoutPropertyValue("visibility", z ? "visible" : "none"));
        }
    }

    public void show(String str) {
        RemoteConfig$RemoteConfigHCaptcha remoteConfig$RemoteConfigHCaptcha;
        BaseActivity baseActivity = (BaseActivity) this.socket;
        if (((HCaptcha) this.source) == null) {
            RemoteConfig$RemoteConfigAndroidV1 remoteConfig$RemoteConfigAndroidV1 = PrefsIoUtil.getConfig().androidv1;
            if (remoteConfig$RemoteConfigAndroidV1 == null || (remoteConfig$RemoteConfigHCaptcha = remoteConfig$RemoteConfigAndroidV1.hCaptcha) == null) {
                remoteConfig$RemoteConfigHCaptcha = new RemoteConfig$RemoteConfigHCaptcha();
            }
            HCaptchaHtml hCaptchaHtml = new HCaptchaHtml();
            HCaptchaInternalConfig hCaptchaInternalConfig = new HCaptchaInternalConfig();
            hCaptchaInternalConfig.htmlProvider = hCaptchaHtml;
            HCaptcha hCaptcha = new HCaptcha(baseActivity, hCaptchaInternalConfig);
            this.source = hCaptcha;
            HCaptchaConfig.HCaptchaConfigBuilder builder = HCaptchaConfig.builder();
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            builder.theme$value = Jsoup.getInstance().currentTheme.isDark() ? HCaptchaTheme.DARK : HCaptchaTheme.LIGHT;
            builder.theme$set = true;
            if (str == null) {
                str = remoteConfig$RemoteConfigHCaptcha.siteKey;
            }
            if (str == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("siteKey is marked non-null but is null");
                return;
            }
            builder.siteKey = str;
            Uri parse = Uri.parse(remoteConfig$RemoteConfigHCaptcha.baseURL);
            parse.getClass();
            builder.host(parse.getHost());
            builder.jsSrc$value = remoteConfig$RemoteConfigHCaptcha.jsSrc;
            builder.jsSrc$set = true;
            builder.endpoint = remoteConfig$RemoteConfigHCaptcha.endpoint;
            builder.assethost = remoteConfig$RemoteConfigHCaptcha.assetHost;
            builder.imghost = remoteConfig$RemoteConfigHCaptcha.imgHost;
            builder.reportapi = remoteConfig$RemoteConfigHCaptcha.reportApi;
            builder.sentry$value = Boolean.valueOf(remoteConfig$RemoteConfigHCaptcha.sentry);
            builder.sentry$set = true;
            builder.loading$value = Boolean.FALSE;
            builder.loading$set = true;
            hCaptcha.setup(builder.build());
            HCaptcha hCaptcha2 = (HCaptcha) this.source;
            if (hCaptcha2 != null) {
                ((CopyOnWriteArrayList) hCaptcha2.onSuccessListeners).add(new OnSuccessListener() { // from class: org.wikipedia.captcha.HCaptchaHelper$$ExternalSyntheticLambda0
                    @Override // com.hcaptcha.sdk.tasks.OnSuccessListener
                    public final void onSuccess(Object obj) {
                        HCaptchaHelper$Callback hCaptchaHelper$Callback = (HCaptchaHelper$Callback) DefaultSocket.this.closeBits;
                        String str2 = ((Symbol) obj).symbol;
                        str2.getClass();
                        hCaptchaHelper$Callback.onSuccess(str2);
                    }
                });
                hCaptcha2.tryCb();
                ((CopyOnWriteArrayList) hCaptcha2.onFailureListeners).add(new OnFailureListener() { // from class: org.wikipedia.captcha.HCaptchaHelper$$ExternalSyntheticLambda1
                    @Override // com.hcaptcha.sdk.tasks.OnFailureListener
                    public final void onFailure(HCaptchaException hCaptchaException) {
                        L.e("hCaptcha failed: " + hCaptchaException.getMessage() + " (" + hCaptchaException.hCaptchaError.getErrorId() + ")");
                        ((HCaptchaHelper$Callback) DefaultSocket.this.closeBits).onError(hCaptchaException);
                    }
                });
                hCaptcha2.tryCb();
                ((CopyOnWriteArrayList) hCaptcha2.onOpenListeners).add(new OnOpenListener() { // from class: org.wikipedia.captcha.HCaptchaHelper$$ExternalSyntheticLambda2
                    @Override // com.hcaptcha.sdk.tasks.OnOpenListener
                    public final void onOpen() {
                        L.d("hCaptcha opened");
                        ((HCaptchaHelper$Callback) DefaultSocket.this.closeBits).onShow();
                    }
                });
                hCaptcha2.tryCb();
            }
        }
        HCaptcha hCaptcha3 = (HCaptcha) this.source;
        if (hCaptcha3 != null) {
            BaseActivity baseActivity2 = (BaseActivity) hCaptcha3.activity;
            if (((IHCaptchaVerifier) hCaptcha3.captchaVerifier) == null) {
                try {
                    String string = HCaptchaCompat.getApplicationInfo(baseActivity2).metaData.getString("com.hcaptcha.sdk.site-key");
                    if (string == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("The site-key is missing. You can pass it by adding com.hcaptcha.sdk.site-key as meta-data to AndroidManifest.xml or as an argument for setup/verifyWithHCaptcha methods.");
                        return;
                    } else {
                        HCaptchaConfig.HCaptchaConfigBuilder builder2 = HCaptchaConfig.builder();
                        builder2.siteKey = string;
                        hCaptcha3.setup(builder2.build());
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalStateException(e);
                }
            }
            "HCaptcha.startVerification".concat("");
            ((Handler) hCaptcha3.handler).removeCallbacksAndMessages(null);
            IHCaptchaVerifier iHCaptchaVerifier = (IHCaptchaVerifier) hCaptcha3.captchaVerifier;
            if (iHCaptchaVerifier == null) {
                hCaptcha3.hCaptchaException = new HCaptchaException(HCaptchaError.ERROR, null);
                hCaptcha3.tryCb();
            } else {
                iHCaptchaVerifier.startVerification(baseActivity2);
            }
        }
        baseActivity.getWindow().getDecorView().post(new HCaptchaHelper$MakeHCaptchaDialogCancelable(this, false));
        baseActivity.getWindow().getDecorView().postDelayed((HCaptchaHelper$MakeHCaptchaDialogCancelable) this.sink, 10000L);
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                String socket = ((java.net.Socket) this.socket).toString();
                socket.getClass();
                return socket;
            default:
                return super.toString();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor
    public void visit(Object obj) {
        ArrayList arrayList = (ArrayList) this.socket;
        SVGAndroidRenderer sVGAndroidRenderer = (SVGAndroidRenderer) this.closeBits;
        Name name = (Name) this.source;
        Object createConstantValue = ConstantValueFactory.createConstantValue(obj, (ModuleDescriptorImpl) sVGAndroidRenderer.state);
        if (createConstantValue == null) {
            createConstantValue = new ErrorValue$ErrorValueWithMessage("Unsupported annotation argument: " + name);
        }
        arrayList.add(createConstantValue);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor
    public KotlinJvmBinaryClass$AnnotationArgumentVisitor visitAnnotation(ClassId classId) {
        ArrayList arrayList = new ArrayList();
        return new ImageLoader$Builder(((SVGAndroidRenderer) this.closeBits).loadAnnotation(classId, SourceElement.NO_SOURCE, arrayList), this, arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor
    public void visitClassLiteral(ClassLiteralValue classLiteralValue) {
        ((ArrayList) this.socket).add(new KClassValue(new KClassValue.Value.NormalClass(classLiteralValue)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor
    public void visitEnd() {
        GsonBuilder gsonBuilder = (GsonBuilder) this.sink;
        Name name = (Name) this.source;
        ArrayList arrayList = (ArrayList) this.socket;
        ValueParameterDescriptorImpl annotationParameterByName = UtilsKt.getAnnotationParameterByName(name, (ModuleAwareClassDescriptor) gsonBuilder.fieldNamingPolicy);
        if (annotationParameterByName != null) {
            HashMap hashMap = (HashMap) gsonBuilder.instanceCreators;
            List compact = DFS.compact(arrayList);
            KotlinType type = annotationParameterByName.getType();
            type.getClass();
            hashMap.put(name, new TypedArrayValue(compact, type));
            return;
        }
        if (((SVGAndroidRenderer) gsonBuilder.longSerializationPolicy).isImplicitRepeatableContainer((ClassId) gsonBuilder.factories) && Intrinsics.areEqual(name.asString(), "value")) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (next instanceof AnnotationValue) {
                    arrayList2.add(next);
                }
            }
            List list = (List) gsonBuilder.hierarchyFactories;
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                list.add((AnnotationDescriptor) ((AnnotationValue) it2.next()).value);
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor
    public void visitEnum(ClassId classId, Name name) {
        ((ArrayList) this.socket).add(new EnumValue(classId, name));
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onShareRequest() {
    }

    public /* synthetic */ DefaultSocket(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.socket = obj;
        this.closeBits = obj2;
        this.source = obj3;
        this.sink = obj4;
    }

    public DefaultSocket(BaseActivity baseActivity, HCaptchaHelper$Callback hCaptchaHelper$Callback) {
        this.$r8$classId = 8;
        this.socket = baseActivity;
        this.closeBits = hCaptchaHelper$Callback;
        this.sink = new HCaptchaHelper$MakeHCaptchaDialogCancelable(this, true);
    }

    public DefaultSocket(ProtoBuf$PackageFragment protoBuf$PackageFragment, FormBody.Builder builder, BinaryVersion binaryVersion, HoverIconModifierNode$findOverridingAncestorNode$1 hoverIconModifierNode$findOverridingAncestorNode$1) {
        this.$r8$classId = 2;
        this.socket = builder;
        this.closeBits = binaryVersion;
        this.source = hoverIconModifierNode$findOverridingAncestorNode$1;
        List list = protoBuf$PackageFragment.class__;
        list.getClass();
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity < 16 ? 16 : mapCapacity);
        for (Object obj : list) {
            linkedHashMap.put(Room.getClassId((FormBody.Builder) this.socket, ((ProtoBuf$Class) obj).fqName_), obj);
        }
        this.sink = linkedHashMap;
    }

    public DefaultSocket(java.net.Socket socket) {
        this.$r8$classId = 0;
        this.socket = socket;
        this.closeBits = new AtomicInteger();
        this.source = new SocketSource();
        this.sink = new SocketSink();
    }

    public DefaultSocket(DiffLineView diffLineView, ImageView imageView, View view, LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.$r8$classId = 18;
        this.socket = imageView;
        this.closeBits = view;
        this.source = textView;
        this.sink = textView2;
    }

    public DefaultSocket(LoginClient loginClient, Path.Companion companion, boolean z) {
        this.$r8$classId = 6;
        this.closeBits = new HashSet();
        Feature feature = (Feature) this.source;
        Float valueOf = Float.valueOf(RecyclerView.DECELERATION_RATE);
        if (feature == null) {
            feature = Feature.fromGeometry(Point.fromLngLat(0.0d, 0.0d));
            feature.addNumberProperty("mapbox-property-gps-bearing", valueOf);
            feature.addNumberProperty("mapbox-property-compass-bearing", valueOf);
            feature.addBooleanProperty("mapbox-property-location-stale", Boolean.valueOf(z));
        }
        this.source = feature;
    }

    public DefaultSocket(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 7:
                break;
            default:
                this.source = new ArrayList();
                this.sink = new ArrayList();
                break;
        }
    }

    public DefaultSocket(SVGAndroidRenderer sVGAndroidRenderer, Name name, GsonBuilder gsonBuilder) {
        this.$r8$classId = 1;
        this.closeBits = sVGAndroidRenderer;
        this.source = name;
        this.sink = gsonBuilder;
        this.socket = new ArrayList();
    }

    public /* synthetic */ DefaultSocket(ViewGroup viewGroup, View view, View view2, View view3, View view4, int i) {
        this.$r8$classId = i;
        this.socket = view;
        this.closeBits = view2;
        this.source = view3;
        this.sink = view4;
    }
}
