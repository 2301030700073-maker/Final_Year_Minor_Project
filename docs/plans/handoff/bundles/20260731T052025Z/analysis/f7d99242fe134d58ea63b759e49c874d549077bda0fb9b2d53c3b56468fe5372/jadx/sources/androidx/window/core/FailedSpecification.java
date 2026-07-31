package androidx.window.core;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Arrays;
import java.util.Collection;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.koin.core.error.InstanceCreationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FailedSpecification extends BuildConfig {
    public final InstanceCreationException exception;
    public final String message;
    public final Object value;
    public final VerificationMode verificationMode;

    public FailedSpecification(Object obj, String str, AndroidLogger androidLogger, VerificationMode verificationMode) {
        Collection asList;
        obj.getClass();
        verificationMode.getClass();
        this.value = obj;
        this.message = str;
        this.verificationMode = verificationMode;
        InstanceCreationException instanceCreationException = new InstanceCreationException(str + " value: " + obj);
        StackTraceElement[] stackTrace = instanceCreationException.getStackTrace();
        stackTrace.getClass();
        int length = stackTrace.length + (-2);
        length = length < 0 ? 0 : length;
        if (length < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(length, "Requested element count ", " is less than zero."));
            throw null;
        }
        if (length == 0) {
            asList = EmptyList.INSTANCE;
        } else {
            int length2 = stackTrace.length;
            if (length >= length2) {
                asList = ArraysKt___ArraysKt.toList(stackTrace);
            } else if (length == 1) {
                asList = IntOffsetKt.listOf(stackTrace[length2 - 1]);
            } else {
                asList = Arrays.asList(ArraysKt___ArraysKt.copyOfRange(stackTrace, length2 - length, length2));
                asList.getClass();
            }
        }
        instanceCreationException.setStackTrace((StackTraceElement[]) asList.toArray(new StackTraceElement[0]));
        this.exception = instanceCreationException;
    }

    @Override // androidx.window.core.BuildConfig
    public final Object compute() {
        int ordinal = this.verificationMode.ordinal();
        if (ordinal == 0) {
            throw this.exception;
        }
        if (ordinal != 1) {
            if (ordinal == 2) {
                return null;
            }
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }
        Object obj = this.value;
        obj.getClass();
        Log.d("SidecarAdapter", this.message + " value: " + obj);
        return null;
    }

    @Override // androidx.window.core.BuildConfig
    public final BuildConfig require(String str, Function1 function1) {
        return this;
    }
}
