package com.ReactNativeBlobUtil;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.database.Cursor;
import android.os.Handler;
import android.os.Message;
import android.util.Base64;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.Data;
import com.ReactNativeBlobUtil.Response.ReactNativeBlobUtilFileResp;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import com.google.common.net.HttpHeaders;
import io.sentry.ProfilingTraceData;
import io.sentry.instrumentation.file.SentryFileOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import okhttp3.Call;
import okhttp3.ConnectionPool;
import okhttp3.Headers;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes2.dex */
public class ReactNativeBlobUtilReq extends BroadcastReceiver implements Runnable {
    Callback callback;
    boolean callbackfired;
    OkHttpClient client;
    long contentLength;
    String customPath;
    String destPath;
    long downloadManagerId;
    private Future<?> future;
    ReadableMap headers;
    String method;
    ReactNativeBlobUtilConfig options;
    String rawRequestBody;
    ReadableArray rawRequestBodyArray;
    ReactNativeBlobUtilBody requestBody;
    RequestType requestType;
    WritableMap respInfo;
    ResponseType responseType;
    String taskId;
    String url;
    public static HashMap<String, Call> taskTable = new HashMap<>();
    public static HashMap<String, Long> androidDownloadManagerTaskTable = new HashMap<>();
    static HashMap<String, ReactNativeBlobUtilProgressConfig> progressReport = new HashMap<>();
    static HashMap<String, ReactNativeBlobUtilProgressConfig> uploadProgressReport = new HashMap<>();
    static ConnectionPool pool = new ConnectionPool();
    ResponseFormat responseFormat = ResponseFormat.Auto;
    boolean timeout = false;
    ArrayList<String> redirects = new ArrayList<>();
    private final int QUERY = 1314;
    private ScheduledExecutorService scheduledExecutorService = Executors.newScheduledThreadPool(1);
    private Handler mHandler = new Handler(new Handler.Callback() { // from class: com.ReactNativeBlobUtil.ReactNativeBlobUtilReq.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1314 && message.getData().getLong("downloadManagerId") == ReactNativeBlobUtilReq.this.downloadManagerId) {
                DownloadManager downloadManager = (DownloadManager) ReactNativeBlobUtilImpl.RCTContext.getApplicationContext().getSystemService("download");
                DownloadManager.Query query = new DownloadManager.Query();
                query.setFilterById(ReactNativeBlobUtilReq.this.downloadManagerId);
                Cursor query2 = downloadManager.query(query);
                if (query2 != null && query2.moveToFirst()) {
                    long j = query2.getInt(query2.getColumnIndex("bytes_so_far"));
                    long j2 = query2.getLong(query2.getColumnIndex("total_size"));
                    query2.close();
                    ReactNativeBlobUtilProgressConfig reportProgress = ReactNativeBlobUtilReq.getReportProgress(ReactNativeBlobUtilReq.this.taskId);
                    float f = j2 > 0 ? j / j2 : 0.0f;
                    if (reportProgress != null && reportProgress.shouldReport(f)) {
                        WritableMap createMap = Arguments.createMap();
                        createMap.putString("taskId", String.valueOf(ReactNativeBlobUtilReq.this.taskId));
                        createMap.putString("written", String.valueOf(j));
                        createMap.putString("total", String.valueOf(j2));
                        createMap.putString("chunk", "");
                        ((DeviceEventManagerModule.RCTDeviceEventEmitter) ReactNativeBlobUtilImpl.RCTContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit(ReactNativeBlobUtilConst.EVENT_PROGRESS, createMap);
                    }
                    if (j2 == j) {
                        ReactNativeBlobUtilReq.this.future.cancel(true);
                    }
                }
            }
            return true;
        }
    });

    enum RequestType {
        Form,
        SingleFile,
        AsIs,
        WithoutBody,
        Others
    }

    enum ResponseFormat {
        Auto,
        UTF8,
        BASE64
    }

    enum ResponseType {
        KeepInMemory,
        FileStorage
    }

    public static OkHttpClient.Builder enableTls12OnPreLollipop(OkHttpClient.Builder builder) {
        return builder;
    }

    private boolean shouldTransformFile() {
        return this.options.transformFile.booleanValue() && (this.options.fileCache.booleanValue() || this.options.path != null);
    }

    public ReactNativeBlobUtilReq(ReadableMap readableMap, String str, String str2, String str3, ReadableMap readableMap2, String str4, ReadableArray readableArray, OkHttpClient okHttpClient, Callback callback) {
        this.method = str2.toUpperCase(Locale.ROOT);
        ReactNativeBlobUtilConfig reactNativeBlobUtilConfig = new ReactNativeBlobUtilConfig(readableMap);
        this.options = reactNativeBlobUtilConfig;
        this.taskId = str;
        this.url = str3;
        this.headers = readableMap2;
        this.callback = callback;
        this.rawRequestBody = str4;
        this.rawRequestBodyArray = readableArray;
        this.client = okHttpClient;
        this.callbackfired = false;
        if ((reactNativeBlobUtilConfig.fileCache.booleanValue() || this.options.path != null) && !shouldTransformFile()) {
            this.responseType = ResponseType.FileStorage;
        } else {
            this.responseType = ResponseType.KeepInMemory;
        }
        if (str4 != null) {
            this.requestType = RequestType.SingleFile;
        } else if (readableArray != null) {
            this.requestType = RequestType.Form;
        } else {
            this.requestType = RequestType.WithoutBody;
        }
    }

    public static void cancelTask(String str) {
        Call call = taskTable.get(str);
        if (call != null) {
            call.cancel();
            taskTable.remove(str);
        }
        if (androidDownloadManagerTaskTable.containsKey(str)) {
            ((DownloadManager) ReactNativeBlobUtilImpl.RCTContext.getApplicationContext().getSystemService("download")).remove(androidDownloadManagerTaskTable.get(str).longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invoke_callback(Object... objArr) {
        if (this.callbackfired) {
            return;
        }
        this.callback.invoke(objArr);
        this.callbackfired = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:173:0x04e2  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x05e2 A[Catch: Exception -> 0x0631, TryCatch #2 {Exception -> 0x0631, blocks: (B:108:0x0343, B:110:0x034d, B:111:0x035a, B:113:0x0365, B:115:0x0379, B:121:0x0388, B:125:0x038f, B:128:0x0395, B:120:0x03a2, B:132:0x03a5, B:134:0x03b2, B:136:0x03b7, B:137:0x03c6, B:139:0x03cf, B:140:0x03d3, B:142:0x03d9, B:149:0x03eb, B:159:0x03f3, B:152:0x03f8, B:155:0x0401, B:145:0x0406, B:162:0x0419, B:165:0x0423, B:167:0x042e, B:170:0x043a, B:171:0x04ca, B:179:0x05c4, B:181:0x05e2, B:182:0x05f4, B:184:0x04ec, B:186:0x04f4, B:188:0x04ff, B:191:0x050b, B:192:0x0512, B:193:0x051f, B:194:0x056f, B:195:0x059a, B:196:0x0440, B:198:0x044e, B:199:0x046a, B:201:0x046e, B:203:0x0476, B:206:0x0481, B:208:0x048f, B:211:0x049e, B:212:0x04a3, B:214:0x04b5, B:215:0x04b8, B:217:0x04be, B:218:0x04c1, B:219:0x04c6, B:221:0x0455, B:223:0x045b, B:225:0x0461, B:226:0x0466, B:229:0x03c3, B:230:0x0354), top: B:107:0x0343, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x059a A[Catch: Exception -> 0x0631, TryCatch #2 {Exception -> 0x0631, blocks: (B:108:0x0343, B:110:0x034d, B:111:0x035a, B:113:0x0365, B:115:0x0379, B:121:0x0388, B:125:0x038f, B:128:0x0395, B:120:0x03a2, B:132:0x03a5, B:134:0x03b2, B:136:0x03b7, B:137:0x03c6, B:139:0x03cf, B:140:0x03d3, B:142:0x03d9, B:149:0x03eb, B:159:0x03f3, B:152:0x03f8, B:155:0x0401, B:145:0x0406, B:162:0x0419, B:165:0x0423, B:167:0x042e, B:170:0x043a, B:171:0x04ca, B:179:0x05c4, B:181:0x05e2, B:182:0x05f4, B:184:0x04ec, B:186:0x04f4, B:188:0x04ff, B:191:0x050b, B:192:0x0512, B:193:0x051f, B:194:0x056f, B:195:0x059a, B:196:0x0440, B:198:0x044e, B:199:0x046a, B:201:0x046e, B:203:0x0476, B:206:0x0481, B:208:0x048f, B:211:0x049e, B:212:0x04a3, B:214:0x04b5, B:215:0x04b8, B:217:0x04be, B:218:0x04c1, B:219:0x04c6, B:221:0x0455, B:223:0x045b, B:225:0x0461, B:226:0x0466, B:229:0x03c3, B:230:0x0354), top: B:107:0x0343, inners: #1 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 1627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ReactNativeBlobUtil.ReactNativeBlobUtilReq.run():void");
    }

    /* renamed from: com.ReactNativeBlobUtil.ReactNativeBlobUtilReq$6, reason: invalid class name */
    static /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] $SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$RequestType;
        static final /* synthetic */ int[] $SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$ResponseType;

        static {
            int[] iArr = new int[ResponseType.values().length];
            $SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$ResponseType = iArr;
            try {
                iArr[ResponseType.KeepInMemory.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$ResponseType[ResponseType.FileStorage.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[RequestType.values().length];
            $SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$RequestType = iArr2;
            try {
                iArr2[RequestType.SingleFile.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$RequestType[RequestType.AsIs.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$RequestType[RequestType.Form.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$RequestType[RequestType.WithoutBody.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseTaskResource() {
        if (taskTable.containsKey(this.taskId)) {
            taskTable.remove(this.taskId);
        }
        if (androidDownloadManagerTaskTable.containsKey(this.taskId)) {
            androidDownloadManagerTaskTable.remove(this.taskId);
        }
        if (uploadProgressReport.containsKey(this.taskId)) {
            uploadProgressReport.remove(this.taskId);
        }
        if (progressReport.containsKey(this.taskId)) {
            progressReport.remove(this.taskId);
        }
        ReactNativeBlobUtilBody reactNativeBlobUtilBody = this.requestBody;
        if (reactNativeBlobUtilBody != null) {
            reactNativeBlobUtilBody.clearRequestBody();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void done(Response response) {
        boolean isBlobResponse = isBlobResponse(response);
        WritableMap responseInfo = getResponseInfo(response, isBlobResponse);
        emitStateEvent(responseInfo.copy());
        emitStateEvent(getResponseInfo(response, isBlobResponse));
        int i = AnonymousClass6.$SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$ResponseType[this.responseType.ordinal()];
        String str = null;
        if (i == 1) {
            if (isBlobResponse) {
                try {
                    if (this.options.auto.booleanValue()) {
                        String tmpPath = ReactNativeBlobUtilFS.getTmpPath(this.taskId);
                        InputStream byteStream = response.body().byteStream();
                        File file = new File(tmpPath);
                        FileOutputStream create = SentryFileOutputStream.Factory.create(new FileOutputStream(file), file);
                        byte[] bArr = new byte[Data.MAX_DATA_BYTES];
                        while (true) {
                            int read = byteStream.read(bArr);
                            if (read == -1) {
                                break;
                            } else {
                                create.write(bArr, 0, read);
                            }
                        }
                        byteStream.close();
                        create.flush();
                        create.close();
                        invoke_callback(null, ReactNativeBlobUtilConst.RNFB_RESPONSE_PATH, tmpPath, responseInfo.copy());
                    }
                } catch (IOException unused) {
                    invoke_callback("ReactNativeBlobUtil failed to encode response data to BASE64 string.", responseInfo.copy());
                }
            }
            byte[] bytes = response.body().bytes();
            if (shouldTransformFile()) {
                if (ReactNativeBlobUtilFileTransformer.sharedFileTransformer == null) {
                    throw new IllegalStateException("Write file with transform was specified but the shared file transformer is not set");
                }
                this.destPath = this.destPath.replace("?append=true", "");
                File file2 = new File(this.destPath);
                if (!file2.exists()) {
                    file2.createNewFile();
                }
                try {
                    FileOutputStream create2 = SentryFileOutputStream.Factory.create(new FileOutputStream(file2), file2);
                    try {
                        create2.write(ReactNativeBlobUtilFileTransformer.sharedFileTransformer.onWriteFile(bytes));
                        create2.close();
                        invoke_callback(null, ReactNativeBlobUtilConst.RNFB_RESPONSE_PATH, this.destPath, responseInfo.copy());
                        return;
                    } catch (Throwable th) {
                        try {
                            create2.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Exception e) {
                    invoke_callback("Error from file transformer:" + e.getLocalizedMessage(), responseInfo.copy());
                    return;
                }
            }
            if (this.responseFormat == ResponseFormat.BASE64) {
                invoke_callback(null, ReactNativeBlobUtilConst.RNFB_RESPONSE_BASE64, Base64.encodeToString(bytes, 2), responseInfo.copy());
                return;
            }
            try {
                Charset forName = Charset.forName("UTF-8");
                forName.newDecoder().decode(ByteBuffer.wrap(bytes));
                invoke_callback(null, ReactNativeBlobUtilConst.RNFB_RESPONSE_UTF8, new String(bytes, forName));
            } catch (CharacterCodingException unused2) {
                if (this.responseFormat == ResponseFormat.UTF8) {
                    invoke_callback(null, ReactNativeBlobUtilConst.RNFB_RESPONSE_UTF8, new String(bytes), responseInfo.copy());
                } else {
                    invoke_callback(null, ReactNativeBlobUtilConst.RNFB_RESPONSE_BASE64, Base64.encodeToString(bytes, 2), responseInfo.copy());
                }
            }
            invoke_callback("ReactNativeBlobUtil failed to encode response data to BASE64 string.", responseInfo.copy());
        } else if (i == 2) {
            ResponseBody body = response.body();
            try {
                body.bytes();
            } catch (Exception unused3) {
            }
            try {
                ReactNativeBlobUtilFileResp reactNativeBlobUtilFileResp = (ReactNativeBlobUtilFileResp) body;
                if (reactNativeBlobUtilFileResp != null && !reactNativeBlobUtilFileResp.isDownloadComplete()) {
                    invoke_callback("Download interrupted.", responseInfo.copy());
                } else {
                    String replace = this.destPath.replace("?append=true", "");
                    this.destPath = replace;
                    invoke_callback(null, ReactNativeBlobUtilConst.RNFB_RESPONSE_PATH, replace, responseInfo.copy());
                }
            } catch (ClassCastException unused4) {
                if (body != null) {
                    try {
                        boolean z = body.getSource().getBufferField().size() > 0;
                        boolean z2 = body.getContentLength() > 0;
                        if (z && z2) {
                            str = body.string();
                        }
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    invoke_callback("Unexpected FileStorage response file: " + str, responseInfo.copy());
                    return;
                }
                invoke_callback("Unexpected FileStorage response with no file.", responseInfo.copy());
                return;
            }
        } else {
            try {
                invoke_callback(null, ReactNativeBlobUtilConst.RNFB_RESPONSE_UTF8, new String(response.body().bytes(), "UTF-8"), responseInfo.copy());
            } catch (IOException unused5) {
                invoke_callback("ReactNativeBlobUtil failed to encode response data to UTF8 string.", responseInfo.copy());
            }
        }
        response.body().close();
        releaseTaskResource();
    }

    public static ReactNativeBlobUtilProgressConfig getReportProgress(String str) {
        if (progressReport.containsKey(str)) {
            return progressReport.get(str);
        }
        return null;
    }

    public static ReactNativeBlobUtilProgressConfig getReportUploadProgress(String str) {
        if (uploadProgressReport.containsKey(str)) {
            return uploadProgressReport.get(str);
        }
        return null;
    }

    private WritableMap getResponseInfo(Response response, boolean z) {
        WritableMap createMap = Arguments.createMap();
        createMap.putInt("status", response.code());
        createMap.putString("state", ExifInterface.GPS_MEASUREMENT_2D);
        createMap.putString("taskId", this.taskId);
        createMap.putBoolean(ProfilingTraceData.TRUNCATION_REASON_TIMEOUT, this.timeout);
        WritableMap createMap2 = Arguments.createMap();
        for (int i = 0; i < response.headers().size(); i++) {
            createMap2.putString(response.headers().name(i), response.headers().value(i));
        }
        WritableArray createArray = Arguments.createArray();
        Iterator<String> it = this.redirects.iterator();
        while (it.hasNext()) {
            createArray.pushString(it.next());
        }
        createMap.putArray("redirects", createArray);
        createMap.putMap("headers", createMap2);
        Headers headers = response.headers();
        if (z) {
            createMap.putString("respType", "blob");
        } else if (getHeaderIgnoreCases(headers, "content-type").equalsIgnoreCase("text/")) {
            createMap.putString("respType", "text");
        } else if (getHeaderIgnoreCases(headers, "content-type").contains("application/json")) {
            createMap.putString("respType", "json");
        } else {
            createMap.putString("respType", "");
        }
        return createMap;
    }

    private boolean isBlobResponse(Response response) {
        boolean z;
        String headerIgnoreCases = getHeaderIgnoreCases(response.headers(), HttpHeaders.CONTENT_TYPE);
        boolean equalsIgnoreCase = headerIgnoreCases.equalsIgnoreCase("text/");
        boolean equalsIgnoreCase2 = headerIgnoreCases.equalsIgnoreCase("application/json");
        if (this.options.binaryContentTypes != null) {
            for (int i = 0; i < this.options.binaryContentTypes.size(); i++) {
                if (headerIgnoreCases.toLowerCase(Locale.ROOT).contains(this.options.binaryContentTypes.getString(i).toLowerCase(Locale.ROOT))) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        return (equalsIgnoreCase2 && equalsIgnoreCase) || z;
    }

    private String getHeaderIgnoreCases(Headers headers, String str) {
        String str2 = headers.get(str);
        return str2 != null ? str2 : headers.get(str.toLowerCase(Locale.ROOT)) == null ? "" : headers.get(str.toLowerCase(Locale.ROOT));
    }

    private String getHeaderIgnoreCases(HashMap<String, String> hashMap, String str) {
        String str2 = hashMap.get(str);
        if (str2 != null) {
            return str2;
        }
        String str3 = hashMap.get(str.toLowerCase(Locale.ROOT));
        return str3 == null ? "" : str3;
    }

    private void emitStateEvent(WritableMap writableMap) {
        ((DeviceEventManagerModule.RCTDeviceEventEmitter) ReactNativeBlobUtilImpl.RCTContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit(ReactNativeBlobUtilConst.EVENT_HTTP_STATE, writableMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x014c A[Catch: Exception -> 0x015c, TryCatch #0 {Exception -> 0x015c, blocks: (B:49:0x013f, B:51:0x014c, B:53:0x0154, B:54:0x015b), top: B:48:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0154 A[Catch: Exception -> 0x015c, TryCatch #0 {Exception -> 0x015c, blocks: (B:49:0x013f, B:51:0x014c, B:53:0x0154, B:54:0x015b), top: B:48:0x013f }] */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(android.content.Context r12, android.content.Intent r13) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ReactNativeBlobUtil.ReactNativeBlobUtilReq.onReceive(android.content.Context, android.content.Intent):void");
    }
}
