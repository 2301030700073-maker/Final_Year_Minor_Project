package com.appsflyer.internal;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.appsflyer.AFLogger;
import com.braze.Constants;
import io.sentry.instrumentation.file.SentryFileInputStream;
import io.sentry.protocol.SentryThread;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public final class AFf1kSDK {
    private static AFf1kSDK AFAdRevenueData;
    private final Map<String, String> getCurrencyIso4217Code = new HashMap<String, String>() { // from class: com.appsflyer.internal.AFf1kSDK.3
        {
            put("aa", "ro.arch");
            put("ab", "ro.chipname");
            put(Constants.BRAZE_PUSH_ACCENT_KEY, "ro.dalvik.vm.native.bridge");
            put("ad", "persist.sys.nativebridge");
            put("ae", "ro.enable.native.bridge.exec");
            put("af", "dalvik.vm.isa.x86.features");
            put("ag", "dalvik.vm.isa.x86.variant");
            put("ah", "ro.zygote");
            put("ai", "ro.allow.mock.location");
            put("aj", "ro.dalvik.vm.isa.arm");
            put("ak", "dalvik.vm.isa.arm.features");
            put("al", "dalvik.vm.isa.arm.variant");
            put("am", "dalvik.vm.isa.arm64.features");
            put("an", "dalvik.vm.isa.arm64.variant");
            put("ao", "vzw.os.rooted");
            put("ap", "ro.build.user");
            put("aq", "ro.kernel.qemu");
            put("ar", "ro.hardware");
            put("as", "ro.product.cpu.abi");
            put("at", "ro.product.cpu.abilist");
            put("au", "ro.product.cpu.abilist32");
            put(CmcdData.Factory.OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO, "ro.product.cpu.abilist64");
        }
    };

    private AFf1kSDK() {
    }

    public static AFf1kSDK getRevenue() {
        if (AFAdRevenueData == null) {
            AFAdRevenueData = new AFf1kSDK();
        }
        return AFAdRevenueData;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0007, code lost:
    
        if (getMonetizationNetwork(r5) == false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getRevenue(android.content.Context r4, java.lang.String r5) {
        /*
            r3 = this;
            r0 = 0
            if (r5 == 0) goto L9
            boolean r5 = getMonetizationNetwork(r5)     // Catch: java.lang.Exception -> L24
            if (r5 != 0) goto Lb
        L9:
            java.lang.String r0 = "invalid timestamp"
        Lb:
            com.appsflyer.internal.AFg1gSDK r5 = new com.appsflyer.internal.AFg1gSDK     // Catch: java.lang.Exception -> L24
            r5.<init>()     // Catch: java.lang.Exception -> L24
            java.lang.String r1 = "pr"
            com.appsflyer.internal.AFg1gSDK r2 = r3.getMediationNetwork()     // Catch: java.lang.Exception -> L24
            r5.getRevenue(r1, r2)     // Catch: java.lang.Exception -> L24
            java.lang.String r1 = "an"
            com.appsflyer.internal.AFg1gSDK r4 = r3.AFAdRevenueData(r4)     // Catch: java.lang.Exception -> L24
            r5.getRevenue(r1, r4)     // Catch: java.lang.Exception -> L24
            goto L2b
        L24:
            r4 = move-exception
            java.lang.String r5 = "could not get anti fraud data"
            com.appsflyer.AFLogger.afErrorLogForExcManagerOnly(r5, r4)
            r5 = r0
        L2b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1kSDK.getRevenue(android.content.Context, java.lang.String):java.lang.Object");
    }

    private static boolean getMonetizationNetwork(String str) {
        return str.matches("\\d+");
    }

    private static boolean getMonetizationNetwork(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    private static String AFAdRevenueData() {
        StringBuilder sb = new StringBuilder();
        try {
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it = Thread.getAllStackTraces().entrySet().iterator();
            int i = 0;
            int i2 = 0;
            while (it.hasNext()) {
                for (StackTraceElement stackTraceElement : it.next().getValue()) {
                    if (stackTraceElement.toString().contains("de.robv.android.xposed") && i2 <= 2) {
                        i2++;
                        sb.append(AFa1tSDK.XPOSED.AFAdRevenueData);
                        if (stackTraceElement.getMethodName().equals(SentryThread.JsonKeys.MAIN)) {
                            sb.append("+a");
                        }
                        if (stackTraceElement.getMethodName().equals("handleHookedMethod")) {
                            sb.append("+h");
                        }
                        sb.append(";");
                    }
                    if (stackTraceElement.getClassName().equals("com.android.internal.os.ZygoteInit")) {
                        i++;
                    }
                }
            }
            if (i > 1) {
                sb.append("mz;");
            }
        } catch (Throwable th) {
            AFLogger.afErrorLogForExcManagerOnly("hooking check error", th);
        }
        try {
            if (AFAdRevenueData(new StringBuilder("/proc/").append(Process.myPid()).append("/maps").toString(), "frida")) {
                sb.append(AFa1tSDK.FRIDA.AFAdRevenueData);
                if (Build.VERSION.SDK_INT < 29 && AFAdRevenueData("/proc/net/tcp", "69A2")) {
                    sb.append("+prt");
                }
            }
        } catch (Exception e) {
            AFLogger.afErrorLogForExcManagerOnly("frida detection error", e);
            sb.append(e.getMessage().toLowerCase(Locale.getDefault()));
        }
        sb.append(";");
        return sb.toString();
    }

    private AFg1gSDK AFAdRevenueData(Context context) {
        AFg1gSDK aFg1gSDK = new AFg1gSDK();
        try {
            aFg1gSDK.getRevenue(AFa1ySDK.HOOKING.getMediationNetwork, AFAdRevenueData());
            aFg1gSDK.getRevenue(AFa1ySDK.DEBUGGABLE.getMediationNetwork, Boolean.valueOf(getMonetizationNetwork(context)));
        } catch (Throwable th) {
            AFLogger.afErrorLogForExcManagerOnly("failed to perform analysis checks", th);
        }
        return aFg1gSDK;
    }

    private AFg1gSDK getMediationNetwork() {
        AFg1gSDK aFg1gSDK = new AFg1gSDK();
        try {
            for (Map.Entry<String, String> entry : this.getCurrencyIso4217Code.entrySet()) {
                String currencyIso4217Code = getCurrencyIso4217Code(entry.getValue());
                if (currencyIso4217Code != null && !currencyIso4217Code.equals("")) {
                    aFg1gSDK.getRevenue(entry.getKey(), currencyIso4217Code);
                }
            }
        } catch (Exception e) {
            AFLogger.afErrorLogForExcManagerOnly("failed to create props", e);
        }
        return aFg1gSDK;
    }

    private static String getCurrencyIso4217Code(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Exception e) {
            AFLogger.afErrorLogForExcManagerOnly("error in props rfl", e);
            return null;
        }
    }

    private static boolean AFAdRevenueData(String str, String str2) throws Exception {
        String readLine;
        File file = new File(str);
        try {
            FileInputStream create = SentryFileInputStream.Factory.create(new FileInputStream(file), file);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(create, Charset.defaultCharset()));
            String lowerCase = str2.toLowerCase(Locale.getDefault());
            do {
                readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    create.close();
                    return false;
                }
            } while (!new HashSet(Arrays.asList(readLine.toLowerCase(Locale.getDefault()).split("[\\s.,\\]\\-:/_\\[]"))).contains(lowerCase));
            bufferedReader.close();
            create.close();
            return true;
        } catch (FileNotFoundException e) {
            AFLogger.afErrorLogForExcManagerOnly("FNF", e);
            throw new Exception("FNF");
        } catch (IOException e2) {
            AFLogger.afErrorLogForExcManagerOnly("IOF", e2);
            throw new Exception("IOF");
        } catch (Exception e3) {
            AFLogger.afErrorLogForExcManagerOnly("GF", e3);
            throw new Exception("GF");
        }
    }

    enum AFa1ySDK {
        HOOKING("hk"),
        DEBUGGABLE("dbg");

        String getMediationNetwork;

        AFa1ySDK(String str) {
            this.getMediationNetwork = str;
        }
    }

    enum AFa1tSDK {
        XPOSED("xps"),
        FRIDA("frd");

        String AFAdRevenueData;

        AFa1tSDK(String str) {
            this.AFAdRevenueData = str;
        }
    }
}
