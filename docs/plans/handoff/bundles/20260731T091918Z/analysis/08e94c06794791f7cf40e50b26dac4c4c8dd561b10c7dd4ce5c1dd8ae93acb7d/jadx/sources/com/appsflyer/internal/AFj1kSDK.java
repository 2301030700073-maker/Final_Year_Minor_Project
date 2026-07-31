package com.appsflyer.internal;

import android.content.Intent;
import android.os.Parcelable;
import com.appsflyer.AFLogger;
import java.util.ConcurrentModificationException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* loaded from: classes2.dex */
public final class AFj1kSDK {
    final Intent getCurrencyIso4217Code;

    public AFj1kSDK(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "");
        this.getCurrencyIso4217Code = intent;
    }

    public final <T extends Parcelable> T H_(final String str) {
        Intrinsics.checkNotNullParameter(str, "");
        return (T) AFAdRevenueData(new Function0<T>() { // from class: com.appsflyer.internal.AFj1kSDK.4
            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: J_, reason: merged with bridge method [inline-methods] */
            public final Parcelable invoke() {
                return AFj1kSDK.this.getCurrencyIso4217Code.getParcelableExtra(str);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }
        }, "Error while trying to read " + str + " extra from intent", null, true);
    }

    public final String getCurrencyIso4217Code(final String str) {
        Intrinsics.checkNotNullParameter(str, "");
        return (String) AFAdRevenueData(new Function0<String>() { // from class: com.appsflyer.internal.AFj1kSDK.3
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: getMediationNetwork, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                return AFj1kSDK.this.getCurrencyIso4217Code.getStringExtra(str);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }
        }, "Error while trying to read " + str + " extra from intent", null, true);
    }

    public final boolean getRevenue(final String str) {
        Intrinsics.checkNotNullParameter(str, "");
        Boolean bool = (Boolean) AFAdRevenueData(new Function0<Boolean>() { // from class: com.appsflyer.internal.AFj1kSDK.1
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: getMonetizationNetwork, reason: merged with bridge method [inline-methods] */
            public final Boolean invoke() {
                return Boolean.valueOf(AFj1kSDK.this.getCurrencyIso4217Code.hasExtra(str));
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }
        }, "Error while trying to check presence of " + str + " extra from intent", Boolean.TRUE, true);
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public final Intent I_(final String str, final long j) {
        Intrinsics.checkNotNullParameter(str, "");
        return (Intent) AFAdRevenueData(new Function0<Intent>() { // from class: com.appsflyer.internal.AFj1kSDK.2
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: K_, reason: merged with bridge method [inline-methods] */
            public final Intent invoke() {
                return AFj1kSDK.this.getCurrencyIso4217Code.putExtra(str, j);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }
        }, "Error while trying to write " + str + " extra to intent", null, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.lang.Object] */
    private final <T> T AFAdRevenueData(Function0<? extends T> function0, String str, T t, boolean z) {
        T t2;
        ?? m2098constructorimpl;
        Object obj;
        synchronized (this.getCurrencyIso4217Code) {
            try {
                Result.Companion companion = Result.INSTANCE;
                AFj1kSDK aFj1kSDK = this;
                t2 = Result.m2098constructorimpl(function0.invoke());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                t2 = Result.m2098constructorimpl(ResultKt.createFailure(th));
            }
            KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(ConcurrentModificationException.class), Reflection.getOrCreateKotlinClass(ArrayIndexOutOfBoundsException.class)};
            Throwable m2101exceptionOrNullimpl = Result.m2101exceptionOrNullimpl(t2);
            T t3 = t2;
            if (m2101exceptionOrNullimpl != null) {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    m2098constructorimpl = Result.m2098constructorimpl(ResultKt.createFailure(th2));
                }
                if (ArraysKt.contains(kClassArr, Reflection.getOrCreateKotlinClass(m2101exceptionOrNullimpl.getClass()))) {
                    if (z) {
                        obj = AFAdRevenueData(function0, str, t, false);
                    } else {
                        AFLogger.afErrorLog(str, m2101exceptionOrNullimpl, false, false);
                        obj = t;
                    }
                    m2098constructorimpl = Result.m2098constructorimpl(obj);
                    t3 = m2098constructorimpl;
                } else {
                    throw m2101exceptionOrNullimpl;
                }
            }
            Throwable m2101exceptionOrNullimpl2 = Result.m2101exceptionOrNullimpl(t3);
            if (m2101exceptionOrNullimpl2 == null) {
                t = t3;
            } else {
                AFLogger.afErrorLog(str, m2101exceptionOrNullimpl2, false, false);
            }
        }
        return t;
    }
}
