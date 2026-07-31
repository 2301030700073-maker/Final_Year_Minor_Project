.class public final Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $$INSTANCE:Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;

.field public static final DEFAULT_MESSAGE_FORMAT:Lnet/thunderbird/core/android/account/MessageFormat;

.field public static final DEFAULT_QUOTE_STYLE:Lnet/thunderbird/core/android/account/QuoteStyle;

.field public static final DEFAULT_SORT_TYPE:Lnet/thunderbird/core/android/account/SortType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->$$INSTANCE:Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;

    .line 7
    .line 8
    sget-object v0, Lnet/thunderbird/core/android/account/MessageFormat;->HTML:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 9
    .line 10
    sput-object v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_MESSAGE_FORMAT:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 11
    .line 12
    sget-object v0, Lnet/thunderbird/core/android/account/QuoteStyle;->PREFIX:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 13
    .line 14
    sput-object v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_QUOTE_STYLE:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 15
    .line 16
    sget-object v0, Lnet/thunderbird/core/android/account/SortType;->SORT_DATE:Lnet/thunderbird/core/android/account/SortType;

    .line 17
    .line 18
    sput-object v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_SORT_TYPE:Lnet/thunderbird/core/android/account/SortType;

    .line 19
    .line 20
    return-void
.end method

.method public static getDEFAULT_MESSAGE_FORMAT()Lnet/thunderbird/core/android/account/MessageFormat;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_MESSAGE_FORMAT:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDEFAULT_QUOTE_STYLE()Lnet/thunderbird/core/android/account/QuoteStyle;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_QUOTE_STYLE:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 2
    .line 3
    return-object v0
.end method
