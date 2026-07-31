package net.thunderbird.feature.thundermail.navigation;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.TuplesKt;
import net.thunderbird.feature.search.legacy.LocalMessageSearch$$ExternalSyntheticLambda0;
import org.koin.java.KoinJavaComponent$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable
/* loaded from: classes.dex */
public interface ThundermailRoute {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        public final KSerializer serializer() {
            SealedClassSerializer sealedClassSerializer = new SealedClassSerializer("net.thunderbird.feature.thundermail.navigation.ThundermailRoute", Reflection.getOrCreateKotlinClass(ThundermailRoute.class), new KClass[]{Reflection.getOrCreateKotlinClass(AccountSetup.class), Reflection.getOrCreateKotlinClass(IncomingSettings.class), Reflection.getOrCreateKotlinClass(OnboardComplete.class), Reflection.getOrCreateKotlinClass(Permissions.class), Reflection.getOrCreateKotlinClass(ScanQrCode.class), Reflection.getOrCreateKotlinClass(SignInWithThundermail.class)}, new KSerializer[]{ThundermailRoute$AccountSetup$$serializer.INSTANCE, new ObjectSerializer("net.thunderbird.feature.thundermail.navigation.ThundermailRoute.IncomingSettings", IncomingSettings.INSTANCE, new Annotation[0]), ThundermailRoute$OnboardComplete$$serializer.INSTANCE, ThundermailRoute$Permissions$$serializer.INSTANCE, new ObjectSerializer("net.thunderbird.feature.thundermail.navigation.ThundermailRoute.ScanQrCode", ScanQrCode.INSTANCE, new Annotation[0]), new ObjectSerializer("net.thunderbird.feature.thundermail.navigation.ThundermailRoute.SignInWithThundermail", SignInWithThundermail.INSTANCE, new Annotation[0])});
            List asList = Arrays.asList(new Annotation[0]);
            asList.getClass();
            sealedClassSerializer._annotations = asList;
            return sealedClassSerializer;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable
    public final class IncomingSettings implements ThundermailRoute {
        public static final IncomingSettings INSTANCE = new IncomingSettings();
        public static final /* synthetic */ Lazy $cachedSerializer$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LocalMessageSearch$$ExternalSyntheticLambda0(28));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof IncomingSettings);
        }

        public final int hashCode() {
            return -1655158820;
        }

        public final KSerializer serializer() {
            return (KSerializer) $cachedSerializer$delegate.getValue();
        }

        public final String toString() {
            return "IncomingSettings";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable
    public final class ScanQrCode implements ThundermailRoute {
        public static final ScanQrCode INSTANCE = new ScanQrCode();
        public static final /* synthetic */ Lazy $cachedSerializer$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LocalMessageSearch$$ExternalSyntheticLambda0(29));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ScanQrCode);
        }

        public final int hashCode() {
            return -2099519426;
        }

        public final KSerializer serializer() {
            return (KSerializer) $cachedSerializer$delegate.getValue();
        }

        public final String toString() {
            return "ScanQrCode";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable
    public final class SignInWithThundermail implements ThundermailRoute {
        public static final SignInWithThundermail INSTANCE = new SignInWithThundermail();
        public static final /* synthetic */ Lazy $cachedSerializer$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new KoinJavaComponent$$ExternalSyntheticLambda0(1));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SignInWithThundermail);
        }

        public final int hashCode() {
            return -854410688;
        }

        public final KSerializer serializer() {
            return (KSerializer) $cachedSerializer$delegate.getValue();
        }

        public final String toString() {
            return "SignInWithThundermail";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable
    public final class AccountSetup implements ThundermailRoute {
        public static final Companion Companion = new Companion();
        public final String accountId;
        public final String basePath;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Companion {
            public final KSerializer serializer() {
                return ThundermailRoute$AccountSetup$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ AccountSetup(int i, String str, String str2) {
            this.accountId = (i & 1) == 0 ? null : str;
            if ((i & 2) == 0) {
                this.basePath = "app://account/setup";
            } else {
                this.basePath = str2;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AccountSetup) && Intrinsics.areEqual(this.accountId, ((AccountSetup) obj).accountId);
        }

        public final int hashCode() {
            String str = this.accountId;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("AccountSetup(accountId=", this.accountId, ")");
        }

        public AccountSetup() {
            this.accountId = null;
            this.basePath = "app://account/setup";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable
    public final class OnboardComplete implements ThundermailRoute {
        public static final Companion Companion = new Companion();
        public final String accountId;
        public final String basePath;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Companion {
            public final KSerializer serializer() {
                return ThundermailRoute$OnboardComplete$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ OnboardComplete(int i, String str, String str2) {
            if (1 != (i & 1)) {
                TuplesKt.throwMissingFieldException(i, 1, ThundermailRoute$OnboardComplete$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.accountId = str;
            if ((i & 2) == 0) {
                this.basePath = "app://thundermail";
            } else {
                this.basePath = str2;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnboardComplete) && Intrinsics.areEqual(this.accountId, ((OnboardComplete) obj).accountId);
        }

        public final int hashCode() {
            return this.accountId.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("OnboardComplete(accountId=", this.accountId, ")");
        }

        public OnboardComplete(String str) {
            this.accountId = str;
            this.basePath = "app://thundermail";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable
    public final class Permissions implements ThundermailRoute {
        public static final Companion Companion = new Companion();
        public final String accountId;
        public final String basePath;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Companion {
            public final KSerializer serializer() {
                return ThundermailRoute$Permissions$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Permissions(int i, String str, String str2) {
            if (1 != (i & 1)) {
                TuplesKt.throwMissingFieldException(i, 1, ThundermailRoute$Permissions$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.accountId = str;
            if ((i & 2) == 0) {
                this.basePath = "app://thundermail";
            } else {
                this.basePath = str2;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Permissions) && Intrinsics.areEqual(this.accountId, ((Permissions) obj).accountId);
        }

        public final int hashCode() {
            return this.accountId.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("Permissions(accountId=", this.accountId, ")");
        }

        public Permissions(String str) {
            str.getClass();
            this.accountId = str;
            this.basePath = "app://thundermail";
        }
    }
}
