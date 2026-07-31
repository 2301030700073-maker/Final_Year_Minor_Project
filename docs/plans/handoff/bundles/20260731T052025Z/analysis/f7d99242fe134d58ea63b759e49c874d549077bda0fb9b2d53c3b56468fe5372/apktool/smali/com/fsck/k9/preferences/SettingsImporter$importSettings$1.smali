.class public final Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public I$0:I

.field public L$2:Ljava/util/List;

.field public L$3:Ljava/util/List;

.field public L$5:Lcom/fsck/k9/preferences/SettingsFile$Contents;

.field public L$6:Ljava/util/Iterator;

.field public L$7:Lcom/fsck/k9/preferences/SettingsFile$Account;

.field public Z$0:Z

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/fsck/k9/preferences/SettingsImporter;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/preferences/SettingsImporter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->this$0:Lcom/fsck/k9/preferences/SettingsImporter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->label:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->this$0:Lcom/fsck/k9/preferences/SettingsImporter;

    .line 13
    .line 14
    invoke-virtual {v1, p1, v0, p1, p0}, Lcom/fsck/k9/preferences/SettingsImporter;->importSettings(Ljava/io/InputStream;ZLjava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
