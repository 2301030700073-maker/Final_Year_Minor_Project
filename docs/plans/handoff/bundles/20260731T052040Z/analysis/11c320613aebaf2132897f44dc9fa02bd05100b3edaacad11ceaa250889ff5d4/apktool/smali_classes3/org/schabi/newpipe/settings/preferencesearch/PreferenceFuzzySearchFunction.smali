.class public final Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final FUZZY_SCORE:Lokio/ByteString$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lokio/ByteString$Companion;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    invoke-direct {v0, v2}, Lokio/ByteString$Companion;-><init>(I)V

    .line 7
    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sput-object v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;->FUZZY_SCORE:Lokio/ByteString$Companion;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "Locale must not be null"

    .line 15
    .line 16
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
