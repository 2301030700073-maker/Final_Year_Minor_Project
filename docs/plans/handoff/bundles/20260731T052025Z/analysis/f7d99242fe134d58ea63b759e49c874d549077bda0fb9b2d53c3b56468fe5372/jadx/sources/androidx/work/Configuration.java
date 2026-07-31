package androidx.work;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import android.widget.EditText;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.TooltipPopup;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material.ripple.StateLayer;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.internal.NavContext;
import androidx.room.util.DBUtil;
import androidx.webkit.internal.WebViewProviderFactory;
import app.k9mail.autodiscovery.autoconfig.AutoconfigUrlProvider;
import app.k9mail.autodiscovery.autoconfig.HttpFetchResult;
import app.k9mail.autodiscovery.autoconfig.RealAutoconfigFetcher$fetchAutoconfig$1;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.EngineJob;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.load.model.ByteBufferEncoder;
import com.bumptech.glide.load.model.FileLoader;
import com.bumptech.glide.load.model.ModelCache$1;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.load.model.stream.HttpGlideUrlLoader;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.util.GlideSuppliers$1;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bytehamster.lib.preferencesearch.SearchPreferenceActionView;
import com.bytehamster.lib.preferencesearch.SearchPreferenceFragment;
import com.eygraber.uri.Uri;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.mail.message.MessageHeaderCollector;
import com.fsck.k9.mail.store.imap.ImapClientInfo;
import com.fsck.k9.mail.store.imap.ImapFolderFetcher;
import com.fsck.k9.mail.store.imap.ImapList;
import com.fsck.k9.mail.store.imap.ImapStoreConfig;
import com.mikepenz.fastadapter.VerboseLogger;
import de.cketti.changelog.XmlParser;
import j$.util.DesugarCollections;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.common.mail.EmailAddress;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Dispatcher;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;
import org.apache.james.mime4j.parser.ContentHandler;
import org.apache.james.mime4j.stream.Field;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Configuration {
    public final int contentUriTriggerWorkersLimit;
    public final SystemClock inputMergerFactory;
    public final boolean isMarkingJobsAsImportantWhileForeground;
    public final int maxJobSchedulerId;
    public final int maxSchedulerLimit;
    public final int minimumLoggingLevel;
    public final Builder runnableScheduler;
    public final SystemClock tracer;
    public final WorkerFactory workerFactory;
    public final ExecutorService executor = Utf8.SafeProcessor.access$createDefaultExecutor(false);
    public final DefaultScheduler workerCoroutineContext = Dispatchers.Default;
    public final ExecutorService taskExecutor = Utf8.SafeProcessor.access$createDefaultExecutor(true);
    public final SystemClock clock = new SystemClock();

    public Configuration(Builder builder) {
        WorkerFactory workerFactory = (WorkerFactory) builder.workerFactory;
        this.workerFactory = workerFactory == null ? DefaultWorkerFactory.INSTANCE : workerFactory;
        this.inputMergerFactory = SystemClock.INSTANCE;
        this.runnableScheduler = new Builder(4);
        this.minimumLoggingLevel = 4;
        this.maxJobSchedulerId = Integer.MAX_VALUE;
        this.maxSchedulerLimit = Build.VERSION.SDK_INT == 23 ? 10 : 20;
        this.contentUriTriggerWorkersLimit = 8;
        this.isMarkingJobsAsImportantWhileForeground = true;
        this.tracer = new SystemClock();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder implements WebViewProviderFactory, Callback, AutoconfigUrlProvider, FactoryPools.Factory, ModelLoaderFactory, Encoder, DefaultImageHeaderParser.Reader, SearchView.OnQueryTextListener, ContentHandler, ImapStoreConfig {
        public final /* synthetic */ int $r8$classId;
        public Object workerFactory;

        public Builder(int i) {
            this.$r8$classId = i;
            switch (i) {
                case 4:
                    this.workerFactory = DBUtil.createAsync(Looper.getMainLooper());
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    this.workerFactory = new Base64Util(12);
                    break;
                case 14:
                    this.workerFactory = new ByteBufferEncoder(7);
                    break;
                case OffsetKt.Horizontal /* 15 */:
                    this.workerFactory = new ModelCache$1(500L);
                    break;
                case 17:
                    this.workerFactory = new Builder(15);
                    break;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Builder parse(ImapList imapList) {
            if (imapList.isEmpty() || !StateLayer.equalsIgnoreCase(imapList.get(0), "CAPABILITY")) {
                return null;
            }
            int size = imapList.size();
            HashSet hashSet = new HashSet(size - 1);
            for (int i = 1; i < size; i++) {
                if (!imapList.isString(i)) {
                    return null;
                }
                hashSet.add(((String) imapList.get(i)).toUpperCase(Locale.US));
            }
            return new Builder(hashSet);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader build(MultiModelLoaderFactory multiModelLoaderFactory) {
            switch (this.$r8$classId) {
                case 14:
                    return new FileLoader(2, (ByteBufferEncoder) this.workerFactory);
                default:
                    return new HttpGlideUrlLoader((Builder) this.workerFactory);
            }
        }

        @Override // com.fsck.k9.mail.store.imap.ImapStoreConfig
        public ImapClientInfo clientInfo() {
            switch (this.$r8$classId) {
                case 26:
                    ImapFolderFetcher imapFolderFetcher = (ImapFolderFetcher) this.workerFactory;
                    return new ImapClientInfo(imapFolderFetcher.clientInfoAppName, imapFolderFetcher.clientInfoAppVersion);
                default:
                    Dispatcher dispatcher = (Dispatcher) this.workerFactory;
                    return new ImapClientInfo((String) dispatcher.runningAsyncCalls, (String) dispatcher.runningSyncCalls);
            }
        }

        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        public Object create() {
            switch (this.$r8$classId) {
                case 10:
                    XmlParser xmlParser = (XmlParser) this.workerFactory;
                    return new DecodeJob((GlideSuppliers$1) xmlParser.xmlPullParser, (ImapSync) xmlParser.result);
                default:
                    TooltipPopup tooltipPopup = (TooltipPopup) this.workerFactory;
                    return new EngineJob((GlideExecutor) tooltipPopup.mContext, (GlideExecutor) tooltipPopup.mContentView, (GlideExecutor) tooltipPopup.mMessageView, (GlideExecutor) tooltipPopup.mLayoutParams, (Engine) tooltipPopup.mTmpDisplayFrame, (Engine) tooltipPopup.mTmpAnchorPos, (ImapSync) tooltipPopup.mTmpAppPos);
            }
        }

        @Override // com.bumptech.glide.load.Encoder
        public boolean encode(Object obj, File file, Options options) {
            InputStream inputStream = (InputStream) obj;
            LruArrayPool lruArrayPool = (LruArrayPool) this.workerFactory;
            byte[] bArr = (byte[]) lruArrayPool.get(65536, byte[].class);
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    while (true) {
                        try {
                            int read = inputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream2.write(bArr, 0, read);
                        } catch (IOException e) {
                            e = e;
                            fileOutputStream = fileOutputStream2;
                            if (Log.isLoggable("StreamEncoder", 3)) {
                                Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused) {
                                }
                            }
                            lruArrayPool.put(bArr);
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused2) {
                                }
                            }
                            lruArrayPool.put(bArr);
                            throw th;
                        }
                    }
                    fileOutputStream2.close();
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused3) {
                    }
                    lruArrayPool.put(bArr);
                    return true;
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public Object fetch(HttpUrl httpUrl, RealAutoconfigFetcher$fetchAutoconfig$1 realAutoconfigFetcher$fetchAutoconfig$1) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, AtomicFU.intercepted(realAutoconfigFetcher$fetchAutoconfig$1));
            cancellableContinuationImpl.initCancellability();
            Request.Builder builder = new Request.Builder();
            httpUrl.getClass();
            builder.url = httpUrl;
            RealCall realCall = new RealCall((OkHttpClient) this.workerFactory, new Request(builder));
            cancellableContinuationImpl.invokeOnCancellation(new ProduceKt$awaitClose$4$1(4, realCall));
            realCall.enqueue(new Builder(5, cancellableContinuationImpl, this));
            return cancellableContinuationImpl.getResult();
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void field(Field field) {
            field.getClass();
            String name = field.getName();
            String obj = field.getRaw().toString();
            MessageHeaderCollector messageHeaderCollector = (MessageHeaderCollector) this.workerFactory;
            name.getClass();
            messageHeaderCollector.addRawHeader(name, obj);
        }

        @Override // app.k9mail.autodiscovery.autoconfig.AutoconfigUrlProvider
        /* renamed from: getAutoconfigUrls-s1GoCZM */
        public List mo822getAutoconfigUrlss1GoCZM(String str, EmailAddress emailAddress) {
            ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
            HttpUrl.Builder builder = new HttpUrl.Builder();
            builder.scheme("https");
            builder.host("autoconfig.".concat(str));
            builder.addEncodedPathSegments("mail/config-v1.1.xml");
            createListBuilder.add(builder.build());
            createListBuilder.addAll(((VerboseLogger) this.workerFactory).mo822getAutoconfigUrlss1GoCZM(str, emailAddress));
            return IntOffsetKt.build(createListBuilder);
        }

        @Override // com.fsck.k9.mail.store.imap.ImapStoreConfig
        public String getLogLabel() {
            switch (this.$r8$classId) {
                case 26:
                    return "folder-fetcher";
                default:
                    return "check";
            }
        }

        public ArrayList getQueryParameters(String str) {
            ArrayList arrayList = new ArrayList();
            Uri uri = (Uri) this.workerFactory;
            for (String str2 : uri.getQueryParameterNames()) {
                if (str2.equalsIgnoreCase(str)) {
                    arrayList.addAll(uri.getQueryParameters(str2));
                }
            }
            return arrayList;
        }

        @Override // androidx.webkit.internal.WebViewProviderFactory
        public StaticsBoundaryInterface getStatics() {
            return (StaticsBoundaryInterface) IntOffsetKt.castToSuppLibClass(StaticsBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.workerFactory).getStatics());
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int getUInt16() {
            return getUInt8() | (getUInt8() << 8);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short getUInt8() {
            int read = ((InputStream) this.workerFactory).read();
            if (read != -1) {
                return (short) read;
            }
            throw new DefaultImageHeaderParser.Reader.EndOfFileException();
        }

        @Override // androidx.webkit.internal.WebViewProviderFactory
        public String[] getWebViewFeatures() {
            return ((WebViewProviderFactoryBoundaryInterface) this.workerFactory).getSupportedFeatures();
        }

        @Override // androidx.webkit.internal.WebViewProviderFactory
        public WebkitToCompatConverterBoundaryInterface getWebkitToCompatConverter() {
            return (WebkitToCompatConverterBoundaryInterface) IntOffsetKt.castToSuppLibClass(WebkitToCompatConverterBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.workerFactory).getWebkitToCompatConverter());
        }

        @Override // com.fsck.k9.mail.store.imap.ImapStoreConfig
        public boolean isExpungeImmediately() {
            switch (this.$r8$classId) {
            }
            return false;
        }

        @Override // com.fsck.k9.mail.store.imap.ImapStoreConfig
        public boolean isSubscribedFoldersOnly() {
            switch (this.$r8$classId) {
            }
            return false;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            ((CancellableContinuationImpl) this.workerFactory).cancel(iOException);
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            SearchPreferenceFragment searchPreferenceFragment = ((SearchPreferenceActionView) this.workerFactory).searchFragment;
            if (searchPreferenceFragment == null) {
                return true;
            }
            Uri.Builder builder = searchPreferenceFragment.viewHolder;
            if (builder != null) {
                ((EditText) builder.authority).setText(str);
                return true;
            }
            searchPreferenceFragment.searchTermPreset = str;
            return true;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            return false;
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            boolean z;
            CancellableContinuationImpl cancellableContinuationImpl = (CancellableContinuationImpl) this.workerFactory;
            if (!response.isSuccessful) {
                response.close();
                cancellableContinuationImpl.resumeWith(new HttpFetchResult.ErrorResponse(response.code));
                return;
            }
            InputStream inputStream = response.body.source().inputStream();
            while (true) {
                Response response2 = response.priorResponse;
                if (!Intrinsics.areEqual(response.request.url.scheme, "https")) {
                    z = false;
                    break;
                } else {
                    if (response2 == null) {
                        z = true;
                        break;
                    }
                    response = response2;
                }
            }
            cancellableContinuationImpl.resumeWith(new HttpFetchResult.SuccessResponse(inputStream, z));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int read(int i, byte[] bArr) {
            int i2 = 0;
            int i3 = 0;
            while (i2 < i && (i3 = ((InputStream) this.workerFactory).read(bArr, i2, i - i2)) != -1) {
                i2 += i3;
            }
            if (i2 == 0 && i3 == -1) {
                throw new DefaultImageHeaderParser.Reader.EndOfFileException();
            }
            return i2;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j) {
            InputStream inputStream = (InputStream) this.workerFactory;
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long skip = inputStream.skip(j2);
                if (skip <= 0) {
                    if (inputStream.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j2 -= skip;
            }
            return j - j2;
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void endBodyPart() {
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void endHeader() {
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void endMessage() {
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void endMultipart() {
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void raw() {
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void startBodyPart() {
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void startHeader() {
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void startMessage() {
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void epilogue(InputStream inputStream) {
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void preamble(InputStream inputStream) {
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void startMultipart(Uri.Builder builder) {
        }

        @Override // org.apache.james.mime4j.parser.ContentHandler
        public void body(Uri.Builder builder, InputStream inputStream) {
        }

        public /* synthetic */ Builder(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.workerFactory = obj;
        }

        public Builder(HashSet hashSet) {
            this.$r8$classId = 25;
            this.workerFactory = DesugarCollections.unmodifiableSet(hashSet);
        }

        public Builder(Context context) {
            this.$r8$classId = 12;
            this.workerFactory = new NavContext(context, 2);
        }

        public /* synthetic */ Builder(int i, Object obj) {
            this.$r8$classId = i;
            this.workerFactory = obj;
        }
    }
}
