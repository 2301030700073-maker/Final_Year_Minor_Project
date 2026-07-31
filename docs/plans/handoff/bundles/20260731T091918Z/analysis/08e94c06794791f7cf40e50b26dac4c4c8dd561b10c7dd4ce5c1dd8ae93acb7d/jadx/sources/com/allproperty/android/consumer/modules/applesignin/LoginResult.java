package com.allproperty.android.consumer.modules.applesignin;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LoginResult.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;", "", "<init>", "()V", "Success", "Failure", "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Failure;", "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Success;", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class LoginResult {
    public /* synthetic */ LoginResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: LoginResult.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Success;", "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;", "idToken", "", "authorizationCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getIdToken", "()Ljava/lang/String;", "getAuthorizationCode", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Success extends LoginResult {
        private final String authorizationCode;
        private final String idToken;

        public static /* synthetic */ Success copy$default(Success success, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = success.idToken;
            }
            if ((i & 2) != 0) {
                str2 = success.authorizationCode;
            }
            return success.copy(str, str2);
        }

        /* renamed from: component1, reason: from getter */
        public final String getIdToken() {
            return this.idToken;
        }

        /* renamed from: component2, reason: from getter */
        public final String getAuthorizationCode() {
            return this.authorizationCode;
        }

        public final Success copy(String idToken, String authorizationCode) {
            Intrinsics.checkNotNullParameter(idToken, "idToken");
            Intrinsics.checkNotNullParameter(authorizationCode, "authorizationCode");
            return new Success(idToken, authorizationCode);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Success)) {
                return false;
            }
            Success success = (Success) other;
            return Intrinsics.areEqual(this.idToken, success.idToken) && Intrinsics.areEqual(this.authorizationCode, success.authorizationCode);
        }

        public int hashCode() {
            return (this.idToken.hashCode() * 31) + this.authorizationCode.hashCode();
        }

        public String toString() {
            return "Success(idToken=" + this.idToken + ", authorizationCode=" + this.authorizationCode + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(String idToken, String authorizationCode) {
            super(null);
            Intrinsics.checkNotNullParameter(idToken, "idToken");
            Intrinsics.checkNotNullParameter(authorizationCode, "authorizationCode");
            this.idToken = idToken;
            this.authorizationCode = authorizationCode;
        }

        public final String getAuthorizationCode() {
            return this.authorizationCode;
        }

        public final String getIdToken() {
            return this.idToken;
        }
    }

    private LoginResult() {
    }

    /* compiled from: LoginResult.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/allproperty/android/consumer/modules/applesignin/LoginResult$Failure;", "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;", "error", "", "<init>", "(Ljava/lang/Throwable;)V", "getError", "()Ljava/lang/Throwable;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Failure extends LoginResult {
        private final Throwable error;

        public static /* synthetic */ Failure copy$default(Failure failure, Throwable th, int i, Object obj) {
            if ((i & 1) != 0) {
                th = failure.error;
            }
            return failure.copy(th);
        }

        /* renamed from: component1, reason: from getter */
        public final Throwable getError() {
            return this.error;
        }

        public final Failure copy(Throwable error) {
            Intrinsics.checkNotNullParameter(error, "error");
            return new Failure(error);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Failure) && Intrinsics.areEqual(this.error, ((Failure) other).error);
        }

        public int hashCode() {
            return this.error.hashCode();
        }

        public String toString() {
            return "Failure(error=" + this.error + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failure(Throwable error) {
            super(null);
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
        }

        public final Throwable getError() {
            return this.error;
        }
    }
}
