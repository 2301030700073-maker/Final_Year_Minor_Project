package rnauthenticator.authenticator;

import androidx.autofill.HintConstants;
import com.allproperty.android.consumer.BuildConfig;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Config.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001f\u0018\u00002\u00020\u0001:\u0004+,-.Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010&\u001a\u00020\u00032\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0003H\u0000¢\u0006\u0002\b(R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u001f\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0014R\u0014\u0010$\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0014R\u0014\u0010)\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0014¨\u0006/"}, d2 = {"Lrnauthenticator/authenticator/Config;", "", "clientId", "", "clientSecret", "clientType", "Lrnauthenticator/authenticator/Config$ClientType;", "redirectUrl", "options", "", "", "environment", "Lrnauthenticator/authenticator/Config$Environment;", "market", "Lrnauthenticator/authenticator/Config$Market;", "locale", "Lrnauthenticator/authenticator/Config$Locale;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lrnauthenticator/authenticator/Config$ClientType;Ljava/lang/String;Ljava/util/Map;Lrnauthenticator/authenticator/Config$Environment;Lrnauthenticator/authenticator/Config$Market;Lrnauthenticator/authenticator/Config$Locale;)V", "getClientId", "()Ljava/lang/String;", "getClientSecret", "getClientType", "()Lrnauthenticator/authenticator/Config$ClientType;", "getRedirectUrl", "getOptions", "()Ljava/util/Map;", "getEnvironment", "()Lrnauthenticator/authenticator/Config$Environment;", "getLocale", "()Lrnauthenticator/authenticator/Config$Locale;", "tokenExchangeFlow", "getTokenExchangeFlow$propertyguru_react_native_authenticator_release", "()Z", "scope", "getScope$propertyguru_react_native_authenticator_release", "region", "getRegion$propertyguru_react_native_authenticator_release", "grantType", "socialLoginProvider", "grantType$propertyguru_react_native_authenticator_release", "responseType", "getResponseType$propertyguru_react_native_authenticator_release", "ClientType", "Locale", "Environment", "Market", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class Config {
    private final String clientId;
    private final String clientSecret;
    private final ClientType clientType;
    private final Environment environment;
    private final Locale locale;
    private final Map<String, Boolean> options;
    private final String redirectUrl;
    private final String region;
    private final String responseType;
    private final String scope;
    private final boolean tokenExchangeFlow;

    /* compiled from: Config.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Market.values().length];
            try {
                iArr[Market.SINGAPORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Market.MALAYSIA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Market.THAILAND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Market.INDONESIA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public Config(String clientId, String str, ClientType clientType, String str2, Map<String, Boolean> map, Environment environment, Market market, Locale locale) {
        String str3;
        String str4;
        String str5;
        Boolean bool;
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        Intrinsics.checkNotNullParameter(clientType, "clientType");
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(market, "market");
        Intrinsics.checkNotNullParameter(locale, "locale");
        this.clientId = clientId;
        this.clientSecret = str;
        this.clientType = clientType;
        this.redirectUrl = str2;
        this.options = map;
        this.environment = environment;
        this.locale = locale;
        boolean booleanValue = (map == null || (bool = map.get("tokenExchangeFlow")) == null) ? false : bool.booleanValue();
        this.tokenExchangeFlow = booleanValue;
        int i = WhenMappings.$EnumSwitchMapping$0[market.ordinal()];
        if (i == 1) {
            str3 = "singapore";
        } else if (i == 2) {
            str3 = BuildConfig.EXPO_UPDATE_CHANNEL_NAME;
        } else if (i == 3) {
            str3 = "thailand";
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            str3 = "indonesia";
        }
        this.scope = str3;
        int i2 = WhenMappings.$EnumSwitchMapping$0[market.ordinal()];
        if (i2 == 1) {
            str4 = "sg";
        } else if (i2 == 2) {
            str4 = "my";
        } else if (i2 == 3) {
            str4 = "th";
        } else {
            if (i2 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            str4 = "id";
        }
        this.region = str4;
        if (booleanValue) {
            str5 = "code";
        } else {
            str5 = "token";
        }
        this.responseType = str5;
    }

    public final String getClientId() {
        return this.clientId;
    }

    public final String getClientSecret() {
        return this.clientSecret;
    }

    public final ClientType getClientType() {
        return this.clientType;
    }

    public final String getRedirectUrl() {
        return this.redirectUrl;
    }

    public final Map<String, Boolean> getOptions() {
        return this.options;
    }

    public final Environment getEnvironment() {
        return this.environment;
    }

    public /* synthetic */ Config(String str, String str2, ClientType clientType, String str3, Map map, Environment environment, Market market, Locale locale, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, clientType, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : map, environment, market, (i & 128) != 0 ? Locale.EN_AU : locale);
    }

    public final Locale getLocale() {
        return this.locale;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Config.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lrnauthenticator/authenticator/Config$ClientType;", "", "value", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "CUSTOMER", "CONSUMER", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ClientType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ClientType[] $VALUES;
        private final String value;
        public static final ClientType CUSTOMER = new ClientType("CUSTOMER", 0, "customer");
        public static final ClientType CONSUMER = new ClientType("CONSUMER", 1, "consumer");

        private static final /* synthetic */ ClientType[] $values() {
            return new ClientType[]{CUSTOMER, CONSUMER};
        }

        public static EnumEntries<ClientType> getEntries() {
            return $ENTRIES;
        }

        private ClientType(String str, int i, String str2) {
            this.value = str2;
        }

        public final String getValue() {
            return this.value;
        }

        static {
            ClientType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        public static ClientType valueOf(String str) {
            return (ClientType) Enum.valueOf(ClientType.class, str);
        }

        public static ClientType[] values() {
            return (ClientType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Config.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u000e\u001a\u00020\u0003H\u0000¢\u0006\u0002\b\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u0010"}, d2 = {"Lrnauthenticator/authenticator/Config$Locale;", "", "value", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "EN_AU", "EN_SG", "EN_MY", "MS_MY", "ID_ID", "TH_TH", "toShort", "toShort$propertyguru_react_native_authenticator_release", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Locale {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Locale[] $VALUES;
        private final String value;
        public static final Locale EN_AU = new Locale("EN_AU", 0, "en_AU");
        public static final Locale EN_SG = new Locale("EN_SG", 1, "en_SG");
        public static final Locale EN_MY = new Locale("EN_MY", 2, "en_MY");
        public static final Locale MS_MY = new Locale("MS_MY", 3, "ms_MY");
        public static final Locale ID_ID = new Locale("ID_ID", 4, "id_ID");
        public static final Locale TH_TH = new Locale("TH_TH", 5, "th_TH");

        /* compiled from: Config.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Locale.values().length];
                try {
                    iArr[Locale.ID_ID.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Locale.TH_TH.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        private static final /* synthetic */ Locale[] $values() {
            return new Locale[]{EN_AU, EN_SG, EN_MY, MS_MY, ID_ID, TH_TH};
        }

        public static EnumEntries<Locale> getEntries() {
            return $ENTRIES;
        }

        private Locale(String str, int i, String str2) {
            this.value = str2;
        }

        public final String getValue() {
            return this.value;
        }

        static {
            Locale[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        public final String toShort$propertyguru_react_native_authenticator_release() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            if (i == 1) {
                return "id";
            }
            if (i == 2) {
                return "th";
            }
            return BuildConfig.LOCALE;
        }

        public static Locale valueOf(String str) {
            return (Locale) Enum.valueOf(Locale.class, str);
        }

        public static Locale[] values() {
            return (Locale[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Config.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lrnauthenticator/authenticator/Config$Environment;", "", "value", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "DEV", "STG", "PROD", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Environment {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Environment[] $VALUES;
        private final String value;
        public static final Environment DEV = new Environment("DEV", 0, "dev");
        public static final Environment STG = new Environment("STG", 1, "stg");
        public static final Environment PROD = new Environment("PROD", 2, "prod");

        private static final /* synthetic */ Environment[] $values() {
            return new Environment[]{DEV, STG, PROD};
        }

        public static EnumEntries<Environment> getEntries() {
            return $ENTRIES;
        }

        private Environment(String str, int i, String str2) {
            this.value = str2;
        }

        public final String getValue() {
            return this.value;
        }

        static {
            Environment[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        public static Environment valueOf(String str) {
            return (Environment) Enum.valueOf(Environment.class, str);
        }

        public static Environment[] values() {
            return (Environment[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Config.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lrnauthenticator/authenticator/Config$Market;", "", "<init>", "(Ljava/lang/String;I)V", "SINGAPORE", "MALAYSIA", "THAILAND", "INDONESIA", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Market {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Market[] $VALUES;
        public static final Market SINGAPORE = new Market("SINGAPORE", 0);
        public static final Market MALAYSIA = new Market("MALAYSIA", 1);
        public static final Market THAILAND = new Market("THAILAND", 2);
        public static final Market INDONESIA = new Market("INDONESIA", 3);

        private static final /* synthetic */ Market[] $values() {
            return new Market[]{SINGAPORE, MALAYSIA, THAILAND, INDONESIA};
        }

        public static EnumEntries<Market> getEntries() {
            return $ENTRIES;
        }

        private Market(String str, int i) {
        }

        static {
            Market[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        public static Market valueOf(String str) {
            return (Market) Enum.valueOf(Market.class, str);
        }

        public static Market[] values() {
            return (Market[]) $VALUES.clone();
        }
    }

    /* renamed from: getTokenExchangeFlow$propertyguru_react_native_authenticator_release, reason: from getter */
    public final boolean getTokenExchangeFlow() {
        return this.tokenExchangeFlow;
    }

    /* renamed from: getScope$propertyguru_react_native_authenticator_release, reason: from getter */
    public final String getScope() {
        return this.scope;
    }

    /* renamed from: getRegion$propertyguru_react_native_authenticator_release, reason: from getter */
    public final String getRegion() {
        return this.region;
    }

    public static /* synthetic */ String grantType$propertyguru_react_native_authenticator_release$default(Config config, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return config.grantType$propertyguru_react_native_authenticator_release(str);
    }

    public final String grantType$propertyguru_react_native_authenticator_release(String socialLoginProvider) {
        if (this.tokenExchangeFlow) {
            return "authorization_code";
        }
        String str = socialLoginProvider;
        return (str == null || str.length() == 0) ? HintConstants.AUTOFILL_HINT_PASSWORD : "social_login";
    }

    /* renamed from: getResponseType$propertyguru_react_native_authenticator_release, reason: from getter */
    public final String getResponseType() {
        return this.responseType;
    }
}
