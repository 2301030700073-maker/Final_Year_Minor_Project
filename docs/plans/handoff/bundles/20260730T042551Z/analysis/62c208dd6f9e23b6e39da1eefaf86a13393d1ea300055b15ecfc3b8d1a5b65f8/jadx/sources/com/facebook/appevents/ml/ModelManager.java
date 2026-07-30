package com.facebook.appevents.ml;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.GraphRequest;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.appevents.internal.FileDownloadTask;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.appevents.suggestedevents.SuggestedEventsManager;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.AbstractC3704so;
import defpackage.B8;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.C0623Yd;
import defpackage.C2819gd;
import defpackage.C3822uo;
import defpackage.C3850vF;
import defpackage.C3881vo;
import defpackage.EF;
import defpackage.O4;
import defpackage.RunnableC0727b2;
import defpackage.RunnableC3939wn;
import defpackage.SK;
import defpackage.Z1;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ModelManager {
    private static final String ASSET_URI_KEY = "asset_uri";
    private static final String CACHE_KEY_MODELS = "models";
    private static final String CACHE_KEY_REQUEST_TIMESTAMP = "model_request_timestamp";
    private static final String MODEL_ASSERT_STORE = "com.facebook.internal.MODEL_STORE";
    public static final int MODEL_REQUEST_INTERVAL_MILLISECONDS = 259200000;
    private static final String MTML_USE_CASE = "MTML";
    private static final String RULES_URI_KEY = "rules_uri";
    private static final String THRESHOLD_KEY = "thresholds";
    private static final String USE_CASE_KEY = "use_case";
    private static final String VERSION_ID_KEY = "version_id";
    public static final ModelManager INSTANCE = new ModelManager();
    private static final Map<String, TaskHandler> taskHandlers = new ConcurrentHashMap();
    private static final List<String> MTML_SUGGESTED_EVENTS_PREDICTION = O4.m1618private("other", AppEventsConstants.EVENT_NAME_COMPLETED_REGISTRATION, AppEventsConstants.EVENT_NAME_ADDED_TO_CART, AppEventsConstants.EVENT_NAME_PURCHASED, AppEventsConstants.EVENT_NAME_INITIATED_CHECKOUT);
    private static final List<String> MTML_INTEGRITY_DETECT_PREDICTION = O4.m1618private(IntegrityManager.INTEGRITY_TYPE_NONE, IntegrityManager.INTEGRITY_TYPE_ADDRESS, IntegrityManager.INTEGRITY_TYPE_HEALTH);

    public enum Task {
        MTML_INTEGRITY_DETECT,
        MTML_APP_EVENT_PREDICTION;

        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Task.valuesCustom().length];
                iArr[Task.MTML_INTEGRITY_DETECT.ordinal()] = 1;
                iArr[Task.MTML_APP_EVENT_PREDICTION.ordinal()] = 2;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Task[] valuesCustom() {
            Task[] valuesCustom = values();
            return (Task[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        public final String toKey() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            if (i == 1) {
                return "integrity_detect";
            }
            if (i == 2) {
                return "app_event_pred";
            }
            throw new C0623Yd();
        }

        public final String toUseCase() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            if (i == 1) {
                return "MTML_INTEGRITY_DETECT";
            }
            if (i == 2) {
                return "MTML_APP_EVENT_PRED";
            }
            throw new C0623Yd();
        }
    }

    public static final class TaskHandler {
        public static final Companion Companion = new Companion(null);
        private String assetUri;
        private Model model;
        private Runnable onPostExecute;
        private File ruleFile;
        private String ruleUri;
        private float[] thresholds;
        private String useCase;
        private int versionId;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(C2819gd c2819gd) {
                this();
            }

            private final void deleteOldFiles(String str, int i) {
                File[] listFiles;
                File mlDir = Utils.getMlDir();
                if (mlDir == null || (listFiles = mlDir.listFiles()) == null) {
                    return;
                }
                int i2 = 0;
                if (listFiles.length == 0) {
                    return;
                }
                String str2 = str + '_' + i;
                int length = listFiles.length;
                while (i2 < length) {
                    File file = listFiles[i2];
                    i2++;
                    String name = file.getName();
                    C0173Do.m399new(name, FacebookRequestErrorClassification.KEY_NAME);
                    if (BF.j(name, str) && !BF.j(name, str2)) {
                        file.delete();
                    }
                }
            }

            private final void download(String str, String str2, FileDownloadTask.Callback callback) {
                File file = new File(Utils.getMlDir(), str2);
                if (str == null || file.exists()) {
                    callback.onComplete(file);
                } else {
                    new FileDownloadTask(str, file, callback).execute(new String[0]);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: execute$lambda-1, reason: not valid java name */
            public static final void m5386execute$lambda1(List list, File file) {
                C0173Do.m401try(list, "$slaves");
                C0173Do.m401try(file, "file");
                final Model build = Model.Companion.build(file);
                if (build != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        final TaskHandler taskHandler = (TaskHandler) it.next();
                        TaskHandler.Companion.download(taskHandler.getRuleUri(), taskHandler.getUseCase() + '_' + taskHandler.getVersionId() + "_rule", new FileDownloadTask.Callback() { // from class: mt
                            @Override // com.facebook.appevents.internal.FileDownloadTask.Callback
                            public final void onComplete(File file2) {
                                ModelManager.TaskHandler.Companion.m5387execute$lambda1$lambda0(ModelManager.TaskHandler.this, build, file2);
                            }
                        });
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: execute$lambda-1$lambda-0, reason: not valid java name */
            public static final void m5387execute$lambda1$lambda0(TaskHandler taskHandler, Model model, File file) {
                C0173Do.m401try(taskHandler, "$slave");
                C0173Do.m401try(file, "file");
                taskHandler.setModel(model);
                taskHandler.setRuleFile(file);
                Runnable runnable = taskHandler.onPostExecute;
                if (runnable == null) {
                    return;
                }
                runnable.run();
            }

            public final TaskHandler build(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return null;
                }
                try {
                    String string = jSONObject.getString(ModelManager.USE_CASE_KEY);
                    String string2 = jSONObject.getString(ModelManager.ASSET_URI_KEY);
                    String optString = jSONObject.optString(ModelManager.RULES_URI_KEY, null);
                    int i = jSONObject.getInt(ModelManager.VERSION_ID_KEY);
                    float[] access$parseJsonArray = ModelManager.access$parseJsonArray(ModelManager.INSTANCE, jSONObject.getJSONArray(ModelManager.THRESHOLD_KEY));
                    C0173Do.m399new(string, "useCase");
                    C0173Do.m399new(string2, "assetUri");
                    return new TaskHandler(string, string2, optString, i, access$parseJsonArray);
                } catch (Exception unused) {
                    return null;
                }
            }

            public final void execute(TaskHandler taskHandler) {
                C0173Do.m401try(taskHandler, "handler");
                execute(taskHandler, O4.m1617package(taskHandler));
            }

            public final void execute(TaskHandler taskHandler, List<TaskHandler> list) {
                C0173Do.m401try(taskHandler, "master");
                C0173Do.m401try(list, "slaves");
                deleteOldFiles(taskHandler.getUseCase(), taskHandler.getVersionId());
                download(taskHandler.getAssetUri(), taskHandler.getUseCase() + '_' + taskHandler.getVersionId(), new SK(list));
            }
        }

        public TaskHandler(String str, String str2, String str3, int i, float[] fArr) {
            C0173Do.m401try(str, "useCase");
            C0173Do.m401try(str2, "assetUri");
            this.useCase = str;
            this.assetUri = str2;
            this.ruleUri = str3;
            this.versionId = i;
            this.thresholds = fArr;
        }

        public final String getAssetUri() {
            return this.assetUri;
        }

        public final Model getModel() {
            return this.model;
        }

        public final File getRuleFile() {
            return this.ruleFile;
        }

        public final String getRuleUri() {
            return this.ruleUri;
        }

        public final float[] getThresholds() {
            return this.thresholds;
        }

        public final String getUseCase() {
            return this.useCase;
        }

        public final int getVersionId() {
            return this.versionId;
        }

        public final void setAssetUri(String str) {
            C0173Do.m401try(str, "<set-?>");
            this.assetUri = str;
        }

        public final void setModel(Model model) {
            this.model = model;
        }

        public final TaskHandler setOnPostExecute(Runnable runnable) {
            this.onPostExecute = runnable;
            return this;
        }

        public final void setRuleFile(File file) {
            this.ruleFile = file;
        }

        public final void setRuleUri(String str) {
            this.ruleUri = str;
        }

        public final void setThresholds(float[] fArr) {
            this.thresholds = fArr;
        }

        public final void setUseCase(String str) {
            C0173Do.m401try(str, "<set-?>");
            this.useCase = str;
        }

        public final void setVersionId(int i) {
            this.versionId = i;
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Task.valuesCustom().length];
            iArr[Task.MTML_APP_EVENT_PREDICTION.ordinal()] = 1;
            iArr[Task.MTML_INTEGRITY_DETECT.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private ModelManager() {
    }

    public static final /* synthetic */ float[] access$parseJsonArray(ModelManager modelManager, JSONArray jSONArray) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            return modelManager.parseJsonArray(jSONArray);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
            return null;
        }
    }

    private final void addModels(JSONObject jSONObject) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                try {
                    TaskHandler build = TaskHandler.Companion.build(jSONObject.getJSONObject(keys.next()));
                    if (build != null) {
                        taskHandlers.put(build.getUseCase(), build);
                    }
                } catch (JSONException unused) {
                    return;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final void enable() {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return;
        }
        try {
            Utility.runOnNonUiThread(new Z1(2));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005b A[Catch: all -> 0x007b, Exception -> 0x007f, TryCatch #2 {Exception -> 0x007f, all -> 0x007b, blocks: (B:6:0x000d, B:8:0x001f, B:13:0x0029, B:14:0x0034, B:16:0x0044, B:18:0x004a, B:20:0x0072, B:23:0x0052, B:26:0x005b, B:27:0x002f), top: B:5:0x000d }] */
    /* renamed from: enable$lambda-0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m5380enable$lambda0() {
        /*
            java.lang.String r0 = "model_request_timestamp"
            java.lang.String r1 = "models"
            java.lang.Class<com.facebook.appevents.ml.ModelManager> r2 = com.facebook.appevents.ml.ModelManager.class
            boolean r3 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r2)
            if (r3 == 0) goto Ld
            return
        Ld:
            android.content.Context r3 = defpackage.C3756th.m8299do()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            java.lang.String r4 = "com.facebook.internal.MODEL_STORE"
            r5 = 0
            android.content.SharedPreferences r3 = r3.getSharedPreferences(r4, r5)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            r4 = 0
            java.lang.String r4 = r3.getString(r1, r4)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            if (r4 == 0) goto L2f
            int r6 = r4.length()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            if (r6 != 0) goto L26
            r5 = 1
        L26:
            if (r5 == 0) goto L29
            goto L2f
        L29:
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            goto L34
        L2f:
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            r5.<init>()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
        L34:
            r6 = 0
            long r6 = r3.getLong(r0, r6)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            com.facebook.internal.FeatureManager r4 = com.facebook.internal.FeatureManager.INSTANCE     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            com.facebook.internal.FeatureManager$Feature r4 = com.facebook.internal.FeatureManager.Feature.ModelRequest     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            boolean r4 = com.facebook.internal.FeatureManager.isEnabled(r4)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            if (r4 == 0) goto L52
            int r4 = r5.length()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            if (r4 == 0) goto L52
            com.facebook.appevents.ml.ModelManager r4 = com.facebook.appevents.ml.ModelManager.INSTANCE     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            boolean r4 = r4.isValidTimestamp(r6)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            if (r4 != 0) goto L72
        L52:
            com.facebook.appevents.ml.ModelManager r4 = com.facebook.appevents.ml.ModelManager.INSTANCE     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            org.json.JSONObject r5 = r4.fetchModels()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            if (r5 != 0) goto L5b
            return
        L5b:
            android.content.SharedPreferences$Editor r3 = r3.edit()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            java.lang.String r4 = r5.toString()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            android.content.SharedPreferences$Editor r1 = r3.putString(r1, r4)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            android.content.SharedPreferences$Editor r0 = r1.putLong(r0, r3)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            r0.apply()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
        L72:
            com.facebook.appevents.ml.ModelManager r0 = com.facebook.appevents.ml.ModelManager.INSTANCE     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            r0.addModels(r5)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            r0.enableMTML()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            goto L7f
        L7b:
            r0 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r0, r2)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.ml.ModelManager.m5380enable$lambda0():void");
    }

    private final void enableMTML() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            String str = null;
            int i = 0;
            for (Map.Entry<String, TaskHandler> entry : taskHandlers.entrySet()) {
                String key = entry.getKey();
                TaskHandler value = entry.getValue();
                if (C0173Do.m394do(key, Task.MTML_APP_EVENT_PREDICTION.toUseCase())) {
                    String assetUri = value.getAssetUri();
                    int max = Math.max(i, value.getVersionId());
                    FeatureManager featureManager = FeatureManager.INSTANCE;
                    if (FeatureManager.isEnabled(FeatureManager.Feature.SuggestedEvents) && isLocaleEnglish()) {
                        arrayList.add(value.setOnPostExecute(new RunnableC3939wn(1)));
                    }
                    str = assetUri;
                    i = max;
                }
                if (C0173Do.m394do(key, Task.MTML_INTEGRITY_DETECT.toUseCase())) {
                    str = value.getAssetUri();
                    i = Math.max(i, value.getVersionId());
                    FeatureManager featureManager2 = FeatureManager.INSTANCE;
                    if (FeatureManager.isEnabled(FeatureManager.Feature.IntelligentIntegrity)) {
                        arrayList.add(value.setOnPostExecute(new RunnableC0727b2(2)));
                    }
                }
            }
            if (str == null || i <= 0 || arrayList.isEmpty()) {
                return;
            }
            TaskHandler.Companion.execute(new TaskHandler(MTML_USE_CASE, str, null, i, null), arrayList);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: enableMTML$lambda-1, reason: not valid java name */
    public static final void m5381enableMTML$lambda1() {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return;
        }
        try {
            SuggestedEventsManager.enable();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: enableMTML$lambda-2, reason: not valid java name */
    public static final void m5382enableMTML$lambda2() {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return;
        }
        try {
            IntegrityManager.enable();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
        }
    }

    private final JSONObject fetchModels() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            String[] strArr = {USE_CASE_KEY, VERSION_ID_KEY, ASSET_URI_KEY, RULES_URI_KEY, THRESHOLD_KEY};
            Bundle bundle = new Bundle();
            bundle.putString("fields", TextUtils.join(",", strArr));
            String str = GraphRequest.f9271for;
            GraphRequest m5286else = GraphRequest.Cfor.m5286else(null, "app/model_asset", null);
            m5286else.f9274do = bundle;
            JSONObject jSONObject = m5286else.m5267for().f1997do;
            if (jSONObject == null) {
                return null;
            }
            return parseRawJsonObject(jSONObject);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public static final File getRuleFile(Task task) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            C0173Do.m401try(task, "task");
            TaskHandler taskHandler = taskHandlers.get(task.toUseCase());
            if (taskHandler == null) {
                return null;
            }
            return taskHandler.getRuleFile();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
            return null;
        }
    }

    private final boolean isLocaleEnglish() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            Locale resourceLocale = Utility.getResourceLocale();
            if (resourceLocale != null) {
                String language = resourceLocale.getLanguage();
                C0173Do.m399new(language, "locale.language");
                if (!EF.k(language, "en")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    private final boolean isValidTimestamp(long j) {
        if (CrashShieldHandler.isObjectCrashing(this) || j == 0) {
            return false;
        }
        try {
            return System.currentTimeMillis() - j < 259200000;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    private final float[] parseJsonArray(JSONArray jSONArray) {
        if (CrashShieldHandler.isObjectCrashing(this) || jSONArray == null) {
            return null;
        }
        try {
            float[] fArr = new float[jSONArray.length()];
            int length = jSONArray.length();
            if (length > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    try {
                        String string = jSONArray.getString(i);
                        C0173Do.m399new(string, "jsonArray.getString(i)");
                        fArr[i] = Float.parseFloat(string);
                    } catch (JSONException unused) {
                    }
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
            return fArr;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    private final JSONObject parseRawJsonObject(JSONObject jSONObject) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("data");
                int length = jSONArray.length();
                if (length <= 0) {
                    return jSONObject2;
                }
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put(VERSION_ID_KEY, jSONObject3.getString(VERSION_ID_KEY));
                    jSONObject4.put(USE_CASE_KEY, jSONObject3.getString(USE_CASE_KEY));
                    jSONObject4.put(THRESHOLD_KEY, jSONObject3.getJSONArray(THRESHOLD_KEY));
                    jSONObject4.put(ASSET_URI_KEY, jSONObject3.getString(ASSET_URI_KEY));
                    if (jSONObject3.has(RULES_URI_KEY)) {
                        jSONObject4.put(RULES_URI_KEY, jSONObject3.getString(RULES_URI_KEY));
                    }
                    jSONObject2.put(jSONObject3.getString(USE_CASE_KEY), jSONObject4);
                    if (i2 >= length) {
                        return jSONObject2;
                    }
                    i = i2;
                }
            } catch (JSONException unused) {
                return new JSONObject();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public static final String[] predict(Task task, float[][] fArr, String[] strArr) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            C0173Do.m401try(task, "task");
            C0173Do.m401try(fArr, "denses");
            C0173Do.m401try(strArr, "texts");
            TaskHandler taskHandler = taskHandlers.get(task.toUseCase());
            Model model = taskHandler == null ? null : taskHandler.getModel();
            if (model == null) {
                return null;
            }
            float[] thresholds = taskHandler.getThresholds();
            int length = strArr.length;
            int length2 = fArr[0].length;
            MTensor mTensor = new MTensor(new int[]{length, length2});
            if (length > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    System.arraycopy(fArr[i], 0, mTensor.getData(), i * length2, length2);
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
            MTensor predictOnMTML = model.predictOnMTML(mTensor, strArr, task.toKey());
            if (predictOnMTML != null && thresholds != null) {
                if (!(predictOnMTML.getData().length == 0)) {
                    if (!(thresholds.length == 0)) {
                        int i3 = WhenMappings.$EnumSwitchMapping$0[task.ordinal()];
                        if (i3 == 1) {
                            return INSTANCE.processSuggestedEventResult(predictOnMTML, thresholds);
                        }
                        if (i3 == 2) {
                            return INSTANCE.processIntegrityDetectionResult(predictOnMTML, thresholds);
                        }
                        throw new C0623Yd();
                    }
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
            return null;
        }
    }

    private final String[] processIntegrityDetectionResult(MTensor mTensor, float[] fArr) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            float[] data = mTensor.getData();
            if (shape2 != fArr.length) {
                return null;
            }
            C3881vo m8461switch = C3850vF.m8461switch(0, shape);
            ArrayList arrayList = new ArrayList(B8.c(m8461switch));
            Iterator<Integer> it = m8461switch.iterator();
            while (((C3822uo) it).f15951do) {
                int nextInt = ((AbstractC3704so) it).nextInt();
                String str = IntegrityManager.INTEGRITY_TYPE_NONE;
                int length = fArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    int i3 = i2 + 1;
                    if (data[(nextInt * shape2) + i2] >= fArr[i]) {
                        str = MTML_INTEGRITY_DETECT_PREDICTION.get(i2);
                    }
                    i++;
                    i2 = i3;
                }
                arrayList.add(str);
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                return (String[]) array;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    private final String[] processSuggestedEventResult(MTensor mTensor, float[] fArr) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            float[] data = mTensor.getData();
            if (shape2 != fArr.length) {
                return null;
            }
            C3881vo m8461switch = C3850vF.m8461switch(0, shape);
            ArrayList arrayList = new ArrayList(B8.c(m8461switch));
            Iterator<Integer> it = m8461switch.iterator();
            while (((C3822uo) it).f15951do) {
                int nextInt = ((AbstractC3704so) it).nextInt();
                String str = "other";
                int length = fArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    int i3 = i2 + 1;
                    if (data[(nextInt * shape2) + i2] >= fArr[i]) {
                        str = MTML_SUGGESTED_EVENTS_PREDICTION.get(i2);
                    }
                    i++;
                    i2 = i3;
                }
                arrayList.add(str);
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                return (String[]) array;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }
}
