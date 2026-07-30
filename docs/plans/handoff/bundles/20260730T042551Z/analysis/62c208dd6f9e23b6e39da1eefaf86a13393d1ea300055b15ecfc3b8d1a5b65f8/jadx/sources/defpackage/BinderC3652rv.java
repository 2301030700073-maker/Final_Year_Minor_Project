package defpackage;

import android.os.IBinder;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.RetainForClient;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import defpackage.InterfaceC0456Qm;
import java.lang.reflect.Field;

@RetainForClient
@KeepForSdk
/* renamed from: rv, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class BinderC3652rv<T> extends InterfaceC0456Qm.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final Object f15339do;

    public BinderC3652rv(Object obj) {
        this.f15339do = obj;
    }

    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static <T> T o(InterfaceC0456Qm interfaceC0456Qm) {
        if (interfaceC0456Qm instanceof BinderC3652rv) {
            return (T) ((BinderC3652rv) interfaceC0456Qm).f15339do;
        }
        IBinder asBinder = interfaceC0456Qm.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i++;
                field = field2;
            }
        }
        if (i != 1) {
            throw new IllegalArgumentException(V1.m2494case("Unexpected number of IObjectWrapper declared fields: ", declaredFields.length));
        }
        Preconditions.checkNotNull(field);
        if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        field.setAccessible(true);
        try {
            return (T) field.get(asBinder);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
        } catch (NullPointerException e2) {
            throw new IllegalArgumentException("Binder object is null.", e2);
        }
    }
}
