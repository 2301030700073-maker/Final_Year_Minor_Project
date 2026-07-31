package org.wikipedia.createaccount;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CreateAccountActivityViewModel extends ViewModel {
    public final StateFlowImpl _authManagerState;
    public final StateFlowImpl _createAccountInfoState;
    public final StateFlowImpl _doCreateAccountState;
    public final SharedFlowImpl _verifyUserNameState;
    public final ReadonlyStateFlow authManagerState;
    public final ReadonlyStateFlow createAccountInfoState;
    public final ReadonlyStateFlow doCreateAccountState;
    public String token;
    public StandaloneCoroutine verifyUserNameJob;
    public final ReadonlySharedFlow verifyUserNameState;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class AccountInfoState {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class DoCreateAccount extends AccountInfoState {
            public final String token;

            public DoCreateAccount(String str) {
                str.getClass();
                this.token = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DoCreateAccount) && Intrinsics.areEqual(this.token, ((DoCreateAccount) obj).token);
            }

            public final int hashCode() {
                return this.token.hashCode();
            }

            public final String toString() {
                return Animation.CC.m("DoCreateAccount(token=", this.token, ")");
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Error extends AccountInfoState {
            public final Throwable throwable;

            public Error(Throwable th) {
                th.getClass();
                this.throwable = th;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && Intrinsics.areEqual(this.throwable, ((Error) obj).throwable);
            }

            public final int hashCode() {
                return this.throwable.hashCode();
            }

            public final String toString() {
                return "Error(throwable=" + this.throwable + ")";
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class HCaptchaDisclaimer extends AccountInfoState {
            public final String disclaimerMessage;

            public HCaptchaDisclaimer(String str) {
                str.getClass();
                this.disclaimerMessage = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof HCaptchaDisclaimer) && Intrinsics.areEqual(this.disclaimerMessage, ((HCaptchaDisclaimer) obj).disclaimerMessage);
            }

            public final int hashCode() {
                return this.disclaimerMessage.hashCode();
            }

            public final String toString() {
                return Animation.CC.m("HCaptchaDisclaimer(disclaimerMessage=", this.disclaimerMessage, ")");
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class HandleCaptcha extends AccountInfoState {
            public final String captchaId;
            public final String token;

            public HandleCaptcha(String str, String str2) {
                str.getClass();
                str2.getClass();
                this.token = str;
                this.captchaId = str2;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof HandleCaptcha)) {
                    return false;
                }
                HandleCaptcha handleCaptcha = (HandleCaptcha) obj;
                return Intrinsics.areEqual(this.token, handleCaptcha.token) && Intrinsics.areEqual(this.captchaId, handleCaptcha.captchaId);
            }

            public final int hashCode() {
                return this.captchaId.hashCode() + (this.token.hashCode() * 31);
            }

            public final String toString() {
                return Modifier.CC.m("HandleCaptcha(token=", this.token, ", captchaId=", this.captchaId, ")");
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class HandleHCaptcha extends AccountInfoState {
            public final String token;

            public HandleHCaptcha(String str) {
                str.getClass();
                this.token = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof HandleHCaptcha) && Intrinsics.areEqual(this.token, ((HandleHCaptcha) obj).token);
            }

            public final int hashCode() {
                return this.token.hashCode();
            }

            public final String toString() {
                return Animation.CC.m("HandleHCaptcha(token=", this.token, ")");
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class InvalidToken extends AccountInfoState {
            public static final InvalidToken INSTANCE = new InvalidToken();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof InvalidToken);
            }

            public final int hashCode() {
                return 1254462766;
            }

            public final String toString() {
                return "InvalidToken";
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class CreateAccountState {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Error extends CreateAccountState {
            public final Throwable throwable;

            public Error(Throwable th) {
                th.getClass();
                this.throwable = th;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && Intrinsics.areEqual(this.throwable, ((Error) obj).throwable);
            }

            public final int hashCode() {
                return this.throwable.hashCode();
            }

            public final String toString() {
                return "Error(throwable=" + this.throwable + ")";
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Pass extends CreateAccountState {
            public final String userName;

            public Pass(String str) {
                this.userName = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Pass) && this.userName.equals(((Pass) obj).userName);
            }

            public final int hashCode() {
                return this.userName.hashCode();
            }

            public final String toString() {
                return Animation.CC.m("Pass(userName=", this.userName, ")");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class UserNameState {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Blocked extends UserNameState {
            public final String error;

            public Blocked(String str) {
                this.error = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Blocked) && this.error.equals(((Blocked) obj).error);
            }

            public final int hashCode() {
                return this.error.hashCode();
            }

            public final String toString() {
                return Animation.CC.m("Blocked(error=", this.error, ")");
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class CannotCreate extends UserNameState {
            public final String userName;

            public CannotCreate(String str) {
                str.getClass();
                this.userName = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof CannotCreate) && Intrinsics.areEqual(this.userName, ((CannotCreate) obj).userName);
            }

            public final int hashCode() {
                return this.userName.hashCode();
            }

            public final String toString() {
                return Animation.CC.m("CannotCreate(userName=", this.userName, ")");
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Initial extends UserNameState {
            public static final Initial INSTANCE = new Initial();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Initial);
            }

            public final int hashCode() {
                return -1354072539;
            }

            public final String toString() {
                return "Initial";
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Success extends UserNameState {
            public static final Success INSTANCE = new Success();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Success);
            }

            public final int hashCode() {
                return -874617116;
            }

            public final String toString() {
                return "Success";
            }
        }
    }

    public CreateAccountActivityViewModel() {
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(new AccountInfoState());
        this._authManagerState = MutableStateFlow;
        this.authManagerState = new ReadonlyStateFlow(MutableStateFlow);
        StateFlowImpl MutableStateFlow2 = StateFlowKt.MutableStateFlow(new AccountInfoState());
        this._createAccountInfoState = MutableStateFlow2;
        this.createAccountInfoState = new ReadonlyStateFlow(MutableStateFlow2);
        StateFlowImpl MutableStateFlow3 = StateFlowKt.MutableStateFlow(new CreateAccountState());
        this._doCreateAccountState = MutableStateFlow3;
        this.doCreateAccountState = new ReadonlyStateFlow(MutableStateFlow3);
        SharedFlowImpl MutableSharedFlow$default = StateFlowKt.MutableSharedFlow$default(0, 7, null);
        this._verifyUserNameState = MutableSharedFlow$default;
        this.verifyUserNameState = new ReadonlySharedFlow(MutableSharedFlow$default);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new CreateAccountActivityViewModel$doCreateAccount$$inlined$CoroutineExceptionHandler$1(this, 2), null, new PageActivity$onCreate$1$1$1(3, this, null), 2);
    }
}
