.class public abstract Lco/touchlab/kermit/BaseLoggerKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final DEFAULT_MIN_SEVERITY:Lco/touchlab/kermit/Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lco/touchlab/kermit/Severity;->Verbose:Lco/touchlab/kermit/Severity;

    .line 2
    .line 3
    sput-object v0, Lco/touchlab/kermit/BaseLoggerKt;->DEFAULT_MIN_SEVERITY:Lco/touchlab/kermit/Severity;

    .line 4
    .line 5
    return-void
.end method
