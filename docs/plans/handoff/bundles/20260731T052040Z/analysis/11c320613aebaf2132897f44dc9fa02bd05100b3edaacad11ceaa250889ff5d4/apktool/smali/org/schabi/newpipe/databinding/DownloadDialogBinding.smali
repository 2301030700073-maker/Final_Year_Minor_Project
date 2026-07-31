.class public final Lorg/schabi/newpipe/databinding/DownloadDialogBinding;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final audioButton:Landroid/widget/RadioButton;

.field public final audioStreamSpinner:Landroid/widget/Spinner;

.field public final audioTrackPresentInVideoText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final audioTrackSpinner:Landroid/widget/Spinner;

.field public final fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

.field public final qualitySpinner:Landroid/widget/Spinner;

.field public final rootView:Landroid/widget/RelativeLayout;

.field public final subtitleButton:Landroid/widget/RadioButton;

.field public final threads:Landroid/widget/SeekBar;

.field public final threadsCount:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final toolbarLayout:Lorg/jsoup/nodes/Printer;

.field public final videoAudioGroup:Landroid/widget/RadioGroup;

.field public final videoButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RadioButton;Landroid/widget/Spinner;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Spinner;Lorg/schabi/newpipe/views/NewPipeEditText;Landroid/widget/Spinner;Landroid/widget/RadioButton;Landroid/widget/SeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/jsoup/nodes/Printer;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackPresentInVideoText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    .line 21
    .line 22
    iput-object p10, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threadsCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 23
    .line 24
    iput-object p11, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->toolbarLayout:Lorg/jsoup/nodes/Printer;

    .line 25
    .line 26
    iput-object p12, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    .line 27
    .line 28
    iput-object p13, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method
