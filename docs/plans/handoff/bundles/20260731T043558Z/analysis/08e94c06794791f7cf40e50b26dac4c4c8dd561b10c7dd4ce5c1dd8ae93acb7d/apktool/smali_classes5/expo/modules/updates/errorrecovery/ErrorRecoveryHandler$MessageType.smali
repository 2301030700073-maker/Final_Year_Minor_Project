.class public final Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$MessageType;
.super Ljava/lang/Object;
.source "ErrorRecoveryHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageType"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$MessageType;",
        "",
        "<init>",
        "()V",
        "EXCEPTION_ENCOUNTERED",
        "",
        "CONTENT_APPEARED",
        "REMOTE_LOAD_STATUS_CHANGED",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CONTENT_APPEARED:I = 0x1

.field public static final EXCEPTION_ENCOUNTERED:I = 0x0

.field public static final INSTANCE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$MessageType;

.field public static final REMOTE_LOAD_STATUS_CHANGED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$MessageType;

    invoke-direct {v0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$MessageType;-><init>()V

    sput-object v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$MessageType;->INSTANCE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$MessageType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
