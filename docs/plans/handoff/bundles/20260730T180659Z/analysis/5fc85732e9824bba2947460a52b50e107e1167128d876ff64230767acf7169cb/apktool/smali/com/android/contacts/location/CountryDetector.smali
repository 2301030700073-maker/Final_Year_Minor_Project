.class public Lcom/android/contacts/location/CountryDetector;
.super Ljava/lang/Object;
.source "CountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/location/CountryDetector$LocaleProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CountryDetector"

.field private static sInstance:Lcom/android/contacts/location/CountryDetector;


# instance fields
.field private final DEFAULT_COUNTRY_ISO:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mLocaleProvider:Lcom/android/contacts/location/CountryDetector$LocaleProvider;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "phone"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/contacts/location/CountryDetector$LocaleProvider;

    invoke-direct {v1}, Lcom/android/contacts/location/CountryDetector$LocaleProvider;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/location/CountryDetector;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Lcom/android/contacts/location/CountryDetector$LocaleProvider;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Lcom/android/contacts/location/CountryDetector$LocaleProvider;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "US"

    .line 35
    iput-object v0, p0, Lcom/android/contacts/location/CountryDetector;->DEFAULT_COUNTRY_ISO:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/contacts/location/CountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 55
    iput-object p3, p0, Lcom/android/contacts/location/CountryDetector;->mLocaleProvider:Lcom/android/contacts/location/CountryDetector$LocaleProvider;

    .line 56
    iput-object p1, p0, Lcom/android/contacts/location/CountryDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/location/CountryDetector;
    .locals 2

    const-class v0, Lcom/android/contacts/location/CountryDetector;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/android/contacts/location/CountryDetector;->sInstance:Lcom/android/contacts/location/CountryDetector;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/android/contacts/location/CountryDetector;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/contacts/location/CountryDetector;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/contacts/location/CountryDetector;->sInstance:Lcom/android/contacts/location/CountryDetector;

    .line 77
    :cond_0
    sget-object p0, Lcom/android/contacts/location/CountryDetector;->sInstance:Lcom/android/contacts/location/CountryDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getLocaleBasedCountryIso()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/contacts/location/CountryDetector;->mLocaleProvider:Lcom/android/contacts/location/CountryDetector$LocaleProvider;

    invoke-virtual {v0}, Lcom/android/contacts/location/CountryDetector$LocaleProvider;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNetworkBasedCountryIso()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/contacts/location/CountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSimBasedCountryIso()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/contacts/location/CountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNetworkCountryCodeAvailable()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/contacts/location/CountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/android/contacts/location/CountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/android/contacts/location/CountryDetector;->getNetworkBasedCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/android/contacts/location/CountryDetector;->getSimBasedCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    invoke-direct {p0}, Lcom/android/contacts/location/CountryDetector;->getLocaleBasedCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "US"

    .line 94
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceForTest(Landroid/content/Context;Landroid/telephony/TelephonyManager;Lcom/android/contacts/location/CountryDetector$LocaleProvider;)Lcom/android/contacts/location/CountryDetector;
    .locals 1

    .line 64
    new-instance v0, Lcom/android/contacts/location/CountryDetector;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/contacts/location/CountryDetector;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Lcom/android/contacts/location/CountryDetector$LocaleProvider;)V

    return-object v0
.end method
