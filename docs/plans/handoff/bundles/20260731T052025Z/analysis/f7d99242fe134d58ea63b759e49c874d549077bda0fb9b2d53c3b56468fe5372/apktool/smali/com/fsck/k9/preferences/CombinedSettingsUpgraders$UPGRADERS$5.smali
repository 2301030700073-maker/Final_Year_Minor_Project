.class public final synthetic Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$5;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$5;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$5;

    .line 2
    .line 3
    const-string v4, "<init>()V"

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const-class v2, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo104;

    .line 8
    .line 9
    const-string v3, "<init>"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$5;->INSTANCE:Lcom/fsck/k9/preferences/CombinedSettingsUpgraders$UPGRADERS$5;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo104;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
