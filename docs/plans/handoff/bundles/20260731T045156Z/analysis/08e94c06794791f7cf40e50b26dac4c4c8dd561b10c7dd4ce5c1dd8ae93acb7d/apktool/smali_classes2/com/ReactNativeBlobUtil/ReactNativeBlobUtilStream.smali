.class public Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;
.super Ljava/lang/Object;
.source "ReactNativeBlobUtilStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final fileStreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final emitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

.field private encoding:Ljava/lang/String;

.field private writeStreamInstance:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->fileStreams:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "base64"

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeStreamInstance:Ljava/io/OutputStream;

    .line 37
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    return-void
.end method

.method static closeStream(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 2

    .line 246
    :try_start_0
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->fileStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;

    .line 248
    iget-object v1, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeStreamInstance:Ljava/io/OutputStream;

    .line 249
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x0

    .line 251
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 253
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 2

    .line 274
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 275
    const-string v1, "event"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string p2, "detail"

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 277
    const-string/jumbo p2, "streamId"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string p2, "ReactNativeBlobUtilFilesystem"

    invoke-interface {p1, p2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 265
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 266
    const-string v1, "event"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string p2, "detail"

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo p2, "streamId"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string p2, "ReactNativeBlobUtilFilesystem"

    invoke-interface {p1, p2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 283
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 284
    const-string v1, "event"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string p2, "code"

    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string p2, "detail"

    invoke-interface {v0, p2, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo p2, "streamId"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string p2, "ReactNativeBlobUtilFilesystem"

    invoke-interface {p1, p2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static writeArrayChunk(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 4

    .line 224
    :try_start_0
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->fileStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;

    .line 226
    iget-object p0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeStreamInstance:Ljava/io/OutputStream;

    .line 227
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 228
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 229
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 232
    new-array p0, v1, [Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method static writeChunk(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 203
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->fileStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;

    .line 205
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeStreamInstance:Ljava/io/OutputStream;

    .line 206
    iget-object p0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->encoding:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilUtils;->stringToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 208
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    const/4 p0, 0x0

    .line 209
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method readStream(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v0, p4

    move-object/from16 v3, p5

    .line 48
    const-string v4, "bundle-assets://"

    const-string v5, "base64"

    const-string v6, "error"

    .line 0
    const-string v7, "Unrecognized encoding `"

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilUtils;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    move-object v9, v8

    goto :goto_0

    :cond_0
    move-object/from16 v9, p1

    .line 53
    :goto_0
    :try_start_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_1

    const/16 v10, 0xfff

    goto :goto_1

    :cond_1
    const/16 v10, 0x1000

    :goto_1
    if-lez p3, :cond_2

    move/from16 v10, p3

    .line 59
    :cond_2
    const-string v11, ""

    if-eqz v8, :cond_3

    :try_start_1
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 60
    sget-object v8, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v8}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v9, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_2

    :cond_3
    if-nez v8, :cond_4

    .line 64
    sget-object v4, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_2

    .line 66
    :cond_4
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4, v8}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->create(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 72
    :goto_2
    const-string/jumbo v8, "utf8"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v12, -0x1

    const-string v13, "data"

    const/4 v14, 0x0

    if-eqz v8, :cond_7

    .line 73
    :try_start_2
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v5, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 74
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 75
    new-array v8, v10, [C

    .line 78
    :goto_3
    invoke-virtual {v7, v8, v14, v10}, Ljava/io/BufferedReader;->read([CII)I

    move-result v15

    if-eq v15, v12, :cond_6

    .line 79
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v8, v14, v15}, Ljava/lang/String;-><init>([CII)V

    .line 80
    invoke-direct {v1, v3, v13, v12}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_5

    int-to-long v14, v0

    .line 82
    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    :cond_5
    const/4 v12, -0x1

    const/4 v14, 0x0

    goto :goto_3

    .line 85
    :cond_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 86
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    goto :goto_6

    .line 87
    :cond_7
    const-string v8, "ascii"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 88
    new-array v5, v10, [B

    .line 89
    :cond_8
    :goto_4
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_a

    .line 90
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v8

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v7, :cond_9

    .line 92
    aget-byte v12, v5, v10

    invoke-interface {v8, v12}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 94
    :cond_9
    invoke-direct {v1, v3, v13, v8}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    if-lez v0, :cond_8

    int-to-long v7, v0

    .line 96
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4

    :cond_a
    :goto_6
    move-object v12, v9

    goto :goto_9

    .line 98
    :cond_b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 99
    new-array v5, v10, [B

    .line 100
    :cond_c
    :goto_7
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_a

    const/4 v12, 0x2

    if-ge v7, v10, :cond_d

    .line 102
    new-array v14, v7, [B

    const/4 v15, 0x0

    .line 103
    invoke-static {v5, v15, v14, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    invoke-static {v14, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v13, v7}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    const/4 v15, 0x0

    .line 106
    invoke-static {v5, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v13, v7}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_8
    if-lez v0, :cond_c

    move-object v12, v9

    int-to-long v8, v0

    .line 108
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    move-object v9, v12

    goto :goto_7

    .line 121
    :goto_9
    const-string v0, "end"

    invoke-direct {v1, v3, v0, v11}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    move-object v12, v9

    .line 111
    const-string v0, "EINVAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "`, should be one of `base64`, `utf8`, `ascii`"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v6, v0, v5}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to convert data to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " encoded string. This might be because this encoding cannot be used for this data."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EUNSPECIFIED"

    invoke-direct {v1, v3, v6, v4, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :catch_1
    move-object v12, v9

    .line 125
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No such file \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v12

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ENOENT"

    invoke-direct {v1, v3, v6, v2, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method writeStream(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V
    .locals 8

    .line 151
    const-string v0, "bundle-assets://"

    .line 0
    const-string v1, "Failed to create parent directory of \'"

    const-string v2, "File \'"

    const-string v3, "Expecting a file but \'"

    .line 151
    invoke-static {p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilUtils;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object p1, v4

    .line 156
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v4, :cond_2

    .line 159
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    .line 160
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 162
    const-string p2, "ENOTDIR"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 166
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_3

    .line 167
    const-string p2, "ENOENT"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\' does not exist and could not be created"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 170
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    const-string p2, "EISDIR"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\' is a directory"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz v4, :cond_4

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    sget-object p3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object p3

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    .line 181
    sget-object p3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p3

    goto :goto_0

    .line 183
    :cond_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0, p1, p3}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->create(Ljava/io/FileOutputStream;Ljava/lang/String;Z)Ljava/io/FileOutputStream;

    move-result-object p3

    .line 185
    :goto_0
    iput-object p2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->encoding:Ljava/lang/String;

    .line 186
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    .line 187
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->fileStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iput-object p3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeStreamInstance:Ljava/io/OutputStream;

    const/4 p3, 0x0

    .line 189
    filled-new-array {p3, p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 191
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to create write stream at path `"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "`; "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EUNSPECIFIED"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
