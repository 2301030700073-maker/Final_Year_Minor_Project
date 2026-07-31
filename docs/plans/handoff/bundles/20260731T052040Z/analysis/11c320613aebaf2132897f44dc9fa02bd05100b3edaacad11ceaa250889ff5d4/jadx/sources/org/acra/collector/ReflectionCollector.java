package org.acra.collector;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.UIntArray;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ReflectionCollector extends BaseReportFieldCollector {
    public static final Companion Companion = new Companion();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static void collectConstants(Class cls, JSONObject jSONObject, Collection collection) {
            UIntArray.Iterator it = Intrinsics.iterator(cls.getFields());
            while (it.hasNext()) {
                Field field = (Field) it.next();
                if (!collection.contains(field.getName())) {
                    try {
                        Object obj = field.get(null);
                        if (obj != null) {
                            if (field.getType().isArray()) {
                                Object[] objArr = (Object[]) obj;
                                jSONObject.put(field.getName(), new JSONArray((Collection) Jsoup.listOf(Arrays.copyOf(objArr, objArr.length))));
                            } else {
                                jSONObject.put(field.getName(), obj);
                            }
                        }
                    } catch (IllegalAccessException | IllegalArgumentException unused) {
                    }
                }
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.BUILD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.BUILD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReportField.ENVIRONMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ReflectionCollector() {
        super(ReportField.BUILD, ReportField.BUILD_CONFIG, ReportField.ENVIRONMENT);
    }

    private void collectStaticGettersResults(Class<?> cls, JSONObject jSONObject) {
        UIntArray.Iterator it = Intrinsics.iterator(cls.getMethods());
        while (it.hasNext()) {
            Method method = (Method) it.next();
            Class<?>[] parameterTypes = method.getParameterTypes();
            parameterTypes.getClass();
            if (parameterTypes.length == 0) {
                String name = method.getName();
                name.getClass();
                if (!StringsKt__StringsJVMKt.startsWith(name, "get", false)) {
                    String name2 = method.getName();
                    name2.getClass();
                    if (StringsKt__StringsJVMKt.startsWith(name2, "is", false)) {
                    }
                }
                if (!"getClass".equals(method.getName())) {
                    try {
                        jSONObject.put(method.getName(), method.invoke(null, null));
                    } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
                    }
                }
            }
        }
    }

    private Class<?> getBuildConfigClass(Context context, CoreConfiguration coreConfiguration) {
        Class<?> buildConfigClass = coreConfiguration.getBuildConfigClass();
        if (buildConfigClass != null) {
            return buildConfigClass;
        }
        return Class.forName(context.getPackageName() + ".BuildConfig");
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        reportField.getClass();
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        JSONObject jSONObject = new JSONObject();
        int i = WhenMappings.$EnumSwitchMapping$0[reportField.ordinal()];
        EmptyList emptyList = EmptyList.INSTANCE;
        if (i == 1) {
            Companion companion = Companion;
            List listOf = Jsoup.listOf("SERIAL");
            companion.getClass();
            Companion.collectConstants(Build.class, jSONObject, listOf);
            JSONObject jSONObject2 = new JSONObject();
            Companion.collectConstants(Build.VERSION.class, jSONObject2, emptyList);
            jSONObject.put("VERSION", jSONObject2);
        } else if (i == 2) {
            Companion companion2 = Companion;
            Class<?> buildConfigClass = getBuildConfigClass(context, coreConfiguration);
            companion2.getClass();
            Companion.collectConstants(buildConfigClass, jSONObject, emptyList);
        } else {
            if (i != 3) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
            }
            collectStaticGettersResults(Environment.class, jSONObject);
        }
        crashReportData.put(reportField, jSONObject);
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }
}
