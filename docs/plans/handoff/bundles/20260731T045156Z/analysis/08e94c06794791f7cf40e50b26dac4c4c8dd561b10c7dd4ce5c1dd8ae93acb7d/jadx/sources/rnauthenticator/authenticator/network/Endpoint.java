package rnauthenticator.authenticator.network;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import rnauthenticator.authenticator.Config;

/* compiled from: Endpoint.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0010B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0000¢\u0006\u0002\b\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lrnauthenticator/authenticator/network/Endpoint;", "", "environment", "Lrnauthenticator/authenticator/Config$Environment;", "tokenExchangeFlow", "", "clientType", "Lrnauthenticator/authenticator/Config$ClientType;", "<init>", "(Lrnauthenticator/authenticator/Config$Environment;ZLrnauthenticator/authenticator/Config$ClientType;)V", "authBaseUrl", "", "of", "operation", "Lrnauthenticator/authenticator/network/Endpoint$Operation;", "of$propertyguru_react_native_authenticator_release", "Operation", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Endpoint {
    private final String authBaseUrl;
    private final Config.ClientType clientType;
    private final boolean tokenExchangeFlow;

    /* compiled from: Endpoint.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[Config.Environment.values().length];
            try {
                iArr[Config.Environment.DEV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Config.Environment.STG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Config.Environment.PROD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Config.ClientType.values().length];
            try {
                iArr2[Config.ClientType.CONSUMER.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[Config.ClientType.CUSTOMER.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[Operation.values().length];
            try {
                iArr3[Operation.LOGIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[Operation.OTP_LOGIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[Operation.SIGN_UP.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[Operation.TOKEN_EXCHANGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[Operation.RESET_PASSWORD.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[Operation.VERIFY_EMAIL.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr3[Operation.UPDATE_PASSWORD.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr3[Operation.VERIFY_TOKEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr3[Operation.USER_EXIST.ordinal()] = 9;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr3[Operation.DELETE_ACCOUNT.ordinal()] = 10;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr3[Operation.GENERATE_OTP.ordinal()] = 11;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr3[Operation.SET_PASSWORD.ordinal()] = 12;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr3[Operation.VERIFY_OTP.ordinal()] = 13;
            } catch (NoSuchFieldError unused18) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    public Endpoint(Config.Environment environment, boolean z, Config.ClientType clientType) {
        String str;
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(clientType, "clientType");
        this.tokenExchangeFlow = z;
        this.clientType = clientType;
        int i = WhenMappings.$EnumSwitchMapping$0[environment.ordinal()];
        if (i == 1) {
            str = "https://auth.integration.propertyguru.com/";
        } else if (i == 2) {
            str = "https://auth.staging.propertyguru.com/";
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            str = "https://auth.propertyguru.com/";
        }
        this.authBaseUrl = str;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Endpoint.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0010\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lrnauthenticator/authenticator/network/Endpoint$Operation;", "", "<init>", "(Ljava/lang/String;I)V", "LOGIN", "OTP_LOGIN", "SIGN_UP", "TOKEN_EXCHANGE", "RESET_PASSWORD", "VERIFY_EMAIL", "UPDATE_PASSWORD", "VERIFY_TOKEN", "USER_EXIST", "DELETE_ACCOUNT", "GENERATE_OTP", "SET_PASSWORD", "VERIFY_OTP", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Operation {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Operation[] $VALUES;
        public static final Operation LOGIN = new Operation("LOGIN", 0);
        public static final Operation OTP_LOGIN = new Operation("OTP_LOGIN", 1);
        public static final Operation SIGN_UP = new Operation("SIGN_UP", 2);
        public static final Operation TOKEN_EXCHANGE = new Operation("TOKEN_EXCHANGE", 3);
        public static final Operation RESET_PASSWORD = new Operation("RESET_PASSWORD", 4);
        public static final Operation VERIFY_EMAIL = new Operation("VERIFY_EMAIL", 5);
        public static final Operation UPDATE_PASSWORD = new Operation("UPDATE_PASSWORD", 6);
        public static final Operation VERIFY_TOKEN = new Operation("VERIFY_TOKEN", 7);
        public static final Operation USER_EXIST = new Operation("USER_EXIST", 8);
        public static final Operation DELETE_ACCOUNT = new Operation("DELETE_ACCOUNT", 9);
        public static final Operation GENERATE_OTP = new Operation("GENERATE_OTP", 10);
        public static final Operation SET_PASSWORD = new Operation("SET_PASSWORD", 11);
        public static final Operation VERIFY_OTP = new Operation("VERIFY_OTP", 12);

        private static final /* synthetic */ Operation[] $values() {
            return new Operation[]{LOGIN, OTP_LOGIN, SIGN_UP, TOKEN_EXCHANGE, RESET_PASSWORD, VERIFY_EMAIL, UPDATE_PASSWORD, VERIFY_TOKEN, USER_EXIST, DELETE_ACCOUNT, GENERATE_OTP, SET_PASSWORD, VERIFY_OTP};
        }

        public static EnumEntries<Operation> getEntries() {
            return $ENTRIES;
        }

        private Operation(String str, int i) {
        }

        static {
            Operation[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        public static Operation valueOf(String str) {
            return (Operation) Enum.valueOf(Operation.class, str);
        }

        public static Operation[] values() {
            return (Operation[]) $VALUES.clone();
        }
    }

    public final String of$propertyguru_react_native_authenticator_release(Operation operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        switch (WhenMappings.$EnumSwitchMapping$2[operation.ordinal()]) {
            case 1:
                if (this.tokenExchangeFlow) {
                    return this.authBaseUrl + "v1/jwt/authorize";
                }
                return this.authBaseUrl + "v1/jwt/login";
            case 2:
                return this.authBaseUrl + "v1/jwt/login";
            case 3:
                int i = WhenMappings.$EnumSwitchMapping$1[this.clientType.ordinal()];
                if (i == 1) {
                    return this.authBaseUrl + "register/consumer";
                }
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                return this.authBaseUrl + "register/customer";
            case 4:
                return this.authBaseUrl + "v1/jwt/authorize-token";
            case 5:
                return this.authBaseUrl + "forgotPassword";
            case 6:
                int i2 = WhenMappings.$EnumSwitchMapping$1[this.clientType.ordinal()];
                if (i2 == 1) {
                    return this.authBaseUrl + "signup/confirm/consumer";
                }
                if (i2 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                return this.authBaseUrl + "signup/confirm/customer";
            case 7:
                return this.authBaseUrl + "forgotPassword/confirm";
            case 8:
                return this.authBaseUrl + "forgot-password/validate/token/%s";
            case 9:
                return this.authBaseUrl + "v1/user/exists";
            case 10:
                return this.authBaseUrl + "v1/user";
            case 11:
                return this.authBaseUrl + "otp/generate";
            case 12:
                return this.authBaseUrl + "password/update";
            case 13:
                return this.authBaseUrl + "otp/verify";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
