.class public final Lorg/schabi/newpipe/download/DownloadDialog$2;
.super Lorg/schabi/newpipe/util/SimpleOnSeekBarChangeListener;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/download/DownloadDialog;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/download/DownloadDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$2;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    add-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog$2;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    .line 4
    .line 5
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const p3, 0x7f1300d7

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 26
    .line 27
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threadsCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
