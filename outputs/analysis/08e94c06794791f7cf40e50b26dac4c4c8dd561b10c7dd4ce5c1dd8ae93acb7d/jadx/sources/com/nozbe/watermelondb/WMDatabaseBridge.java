package com.nozbe.watermelondb;

import android.os.Trace;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.google.android.gms.actions.SearchIntents;
import com.nozbe.watermelondb.Connection;
import com.nozbe.watermelondb.utils.MigrationSet;
import com.nozbe.watermelondb.utils.Schema;
import io.sentry.protocol.MetricSummary;
import io.sentry.react.RNSentryPackage$$ExternalSyntheticBackport0;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public class WMDatabaseBridge extends ReactContextBaseJavaModule {
    public static final String NAME = "WMDatabaseBridge";
    private final Map<Integer, Connection> connections;
    ReactApplicationContext reactContext;

    interface ParamFunction {
        Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver);
    }

    public WMDatabaseBridge(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.connections = new HashMap();
        this.reactContext = reactApplicationContext;
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return NAME;
    }

    @ReactMethod
    public void initialize(Integer num, String str, int i, boolean z, Promise promise) {
        if (this.connections.containsKey(num)) {
            throw new IllegalStateException("A driver with tag " + num + " already set up");
        }
        WritableMap createMap = Arguments.createMap();
        try {
            this.connections.put(num, new Connection.Connected(new WMDatabaseDriver(this.reactContext, str, i, z)));
            createMap.putString("code", "ok");
            promise.resolve(createMap);
        } catch (MigrationNeededError e) {
            this.connections.put(num, new Connection.Waiting(new ArrayList()));
            createMap.putString("code", "migrations_needed");
            createMap.putInt("databaseVersion", e.databaseVersion);
            promise.resolve(createMap);
        } catch (SchemaNeededError unused) {
            this.connections.put(num, new Connection.Waiting(new ArrayList()));
            createMap.putString("code", "schema_needed");
            promise.resolve(createMap);
        } catch (Exception e2) {
            promise.reject(e2);
        }
    }

    @ReactMethod
    public void setUpWithSchema(Integer num, String str, String str2, int i, boolean z, Promise promise) {
        connectDriver(num.intValue(), new WMDatabaseDriver(this.reactContext, str, new Schema(i, str2), z), promise);
    }

    @ReactMethod
    public void setUpWithMigrations(Integer num, String str, String str2, int i, int i2, boolean z, Promise promise) {
        try {
            connectDriver(num.intValue(), new WMDatabaseDriver(this.reactContext, str, new MigrationSet(i, i2, str2), z), promise);
        } catch (Exception e) {
            disconnectDriver(num.intValue());
            promise.reject(e);
        }
    }

    @ReactMethod
    private void find(int i, final String str, final String str2, Promise promise) {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda5
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                Object find;
                find = wMDatabaseDriver.find(str, str2);
                return find;
            }
        }, "find " + str2);
    }

    @ReactMethod
    public void query(int i, final String str, final String str2, final ReadableArray readableArray, Promise promise) {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda3
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                Object cachedQuery;
                cachedQuery = wMDatabaseDriver.cachedQuery(str, str2, readableArray.toArrayList().toArray());
                return cachedQuery;
            }
        }, SearchIntents.EXTRA_QUERY);
    }

    @ReactMethod
    public void queryIds(int i, final String str, final ReadableArray readableArray, Promise promise) {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda1
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                Object queryIds;
                queryIds = wMDatabaseDriver.queryIds(str, readableArray.toArrayList().toArray());
                return queryIds;
            }
        }, "queryIds");
    }

    @ReactMethod
    public void unsafeQueryRaw(int i, final String str, final ReadableArray readableArray, Promise promise) {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda6
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                Object unsafeQueryRaw;
                unsafeQueryRaw = wMDatabaseDriver.unsafeQueryRaw(str, readableArray.toArrayList().toArray());
                return unsafeQueryRaw;
            }
        }, "unsafeQueryRaw");
    }

    @ReactMethod
    public void count(int i, final String str, final ReadableArray readableArray, Promise promise) {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda10
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                Object valueOf;
                valueOf = Integer.valueOf(wMDatabaseDriver.count(str, readableArray.toArrayList().toArray()));
                return valueOf;
            }
        }, MetricSummary.JsonKeys.COUNT);
    }

    @ReactMethod
    public void batch(int i, final ReadableArray readableArray, Promise promise) {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda4
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                return WMDatabaseBridge.lambda$batch$5(ReadableArray.this, wMDatabaseDriver);
            }
        }, "batch");
    }

    static /* synthetic */ Object lambda$batch$5(ReadableArray readableArray, WMDatabaseDriver wMDatabaseDriver) {
        wMDatabaseDriver.batch(readableArray);
        return true;
    }

    @ReactMethod
    public void unsafeResetDatabase(int i, final String str, final int i2, Promise promise) {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda2
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                return WMDatabaseBridge.lambda$unsafeResetDatabase$6(i2, str, wMDatabaseDriver);
            }
        }, "unsafeResetDatabase");
    }

    static /* synthetic */ Object lambda$unsafeResetDatabase$6(int i, String str, WMDatabaseDriver wMDatabaseDriver) {
        wMDatabaseDriver.unsafeResetDatabase(new Schema(i, str));
        return null;
    }

    @ReactMethod
    public void getLocal(int i, final String str, Promise promise) {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda9
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                Object local;
                local = wMDatabaseDriver.getLocal(str);
                return local;
            }
        }, "getLocal");
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    public WritableArray unsafeGetLocalSynchronously(int i, String str) {
        try {
            Connection connection = this.connections.get(Integer.valueOf(i));
            if (connection == null) {
                throw new Exception("No driver with tag " + i + " available");
            }
            if (connection instanceof Connection.Connected) {
                String local = ((Connection.Connected) connection).driver.getLocal(str);
                WritableArray createArray = Arguments.createArray();
                createArray.pushString("result");
                createArray.pushString(local);
                return createArray;
            }
            if (connection instanceof Connection.Waiting) {
                throw new Exception("Waiting connection unexpected for unsafeGetLocalSynchronously");
            }
            return null;
        } catch (Exception e) {
            WritableArray createArray2 = Arguments.createArray();
            createArray2.pushString("error");
            createArray2.pushString(e.getMessage());
            return createArray2;
        }
    }

    private List<Runnable> getQueue(int i) {
        if (this.connections.containsKey(Integer.valueOf(i))) {
            Connection connection = this.connections.get(Integer.valueOf(i));
            if (connection != null) {
                return connection.getQueue();
            }
            return new ArrayList();
        }
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: withDriver, reason: merged with bridge method [inline-methods] */
    public void lambda$withDriver$8(final int i, final Promise promise, final ParamFunction paramFunction, final String str) {
        try {
            try {
                Trace.beginSection("WMDatabaseBridge." + str);
                Connection connection = this.connections.get(Integer.valueOf(i));
                if (connection == null) {
                    promise.reject(new Exception("No driver with tag " + i + " available"));
                } else if (connection instanceof Connection.Connected) {
                    Object applyParamFunction = paramFunction.applyParamFunction(((Connection.Connected) connection).driver);
                    if (applyParamFunction == Void.TYPE) {
                        applyParamFunction = true;
                    }
                    promise.resolve(applyParamFunction);
                } else if (connection instanceof Connection.Waiting) {
                    connection.getQueue().add(new Runnable() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            WMDatabaseBridge.this.lambda$withDriver$8(i, promise, paramFunction, str);
                        }
                    });
                    this.connections.put(Integer.valueOf(i), new Connection.Waiting(connection.getQueue()));
                }
            } catch (Exception e) {
                promise.reject(str, e);
            }
        } finally {
            Trace.endSection();
        }
    }

    private void connectDriver(int i, WMDatabaseDriver wMDatabaseDriver, Promise promise) {
        List<Runnable> queue = getQueue(i);
        this.connections.put(Integer.valueOf(i), new Connection.Connected(wMDatabaseDriver));
        Iterator<Runnable> it = queue.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        promise.resolve(true);
    }

    private void disconnectDriver(int i) {
        List<Runnable> queue = getQueue(i);
        this.connections.remove(Integer.valueOf(i));
        Iterator<Runnable> it = queue.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
    }

    @ReactMethod
    public void provideSyncJson(int i, String str, Promise promise) {
        try {
            Class.forName("com.nozbe.watermelondb.jsi.WatermelonJSI").getDeclaredMethod("provideSyncJson", Integer.TYPE, byte[].class).invoke(null, Integer.valueOf(i), str.getBytes());
            promise.resolve(true);
        } catch (Exception e) {
            promise.reject(e);
        }
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    public WritableArray getRandomBytes(int i) {
        if (i != 256) {
            throw new IllegalStateException("Expected getRandomBytes to be called with 256");
        }
        byte[] bArr = new byte[256];
        new SecureRandom().nextBytes(bArr);
        WritableArray createArray = Arguments.createArray();
        for (int i2 = 0; i2 < 256; i2++) {
            createArray.pushInt(RNSentryPackage$$ExternalSyntheticBackport0.m(bArr[i2]));
        }
        return createArray;
    }

    @Override // com.facebook.react.bridge.BaseJavaModule, com.facebook.react.bridge.NativeModule, com.facebook.react.turbomodule.core.interfaces.TurboModule
    public void invalidate() {
        super.invalidate();
        this.reactContext.runOnJSQueueThread(new Runnable() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                Class.forName("com.nozbe.watermelondb.jsi.WatermelonJSI").getDeclaredMethod("onCatalystInstanceDestroy", new Class[0]).invoke(null, new Object[0]);
            }
        });
    }

    @Override // com.facebook.react.bridge.NativeModule
    @Deprecated
    public void onCatalystInstanceDestroy() {
        super.onCatalystInstanceDestroy();
        this.reactContext.getCatalystInstance().getReactQueueConfiguration().getJSQueueThread().runOnQueue(new Runnable() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                Class.forName("com.nozbe.watermelondb.jsi.WatermelonJSI").getDeclaredMethod("onCatalystInstanceDestroy", new Class[0]).invoke(null, new Object[0]);
            }
        });
    }
}
