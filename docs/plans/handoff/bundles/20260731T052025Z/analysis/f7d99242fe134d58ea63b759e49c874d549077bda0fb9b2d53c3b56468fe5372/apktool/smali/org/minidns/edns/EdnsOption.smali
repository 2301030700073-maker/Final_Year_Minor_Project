.class public abstract Lorg/minidns/edns/EdnsOption;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final optionCode:I

.field public final optionData:[B

.field public final optionLength:I

.field public terminalOutputCache:Ljava/lang/String;

.field public toStringCache:Ljava/lang/String;


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lorg/minidns/edns/EdnsOption;->optionCode:I

    .line 17
    array-length p1, p2

    iput p1, p0, Lorg/minidns/edns/EdnsOption;->optionLength:I

    .line 18
    iput-object p2, p0, Lorg/minidns/edns/EdnsOption;->optionData:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/minidns/edns/Edns$OptionCode;->UNKNOWN:Lorg/minidns/edns/Edns$OptionCode;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lorg/minidns/edns/EdnsOption;->optionCode:I

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    iput v0, p0, Lorg/minidns/edns/EdnsOption;->optionLength:I

    .line 11
    .line 12
    iput-object p1, p0, Lorg/minidns/edns/EdnsOption;->optionData:[B

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract asTerminalOutputInternal()Ljava/lang/StringBuilder;
.end method

.method public abstract getOptionCode()Lorg/minidns/edns/Edns$OptionCode;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/edns/EdnsOption;->toStringCache:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/minidns/edns/EdnsOption;->toStringInternal()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/minidns/edns/EdnsOption;->toStringCache:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lorg/minidns/edns/EdnsOption;->toStringCache:Ljava/lang/String;

    .line 16
    .line 17
    return-object p0
.end method

.method public abstract toStringInternal()Ljava/lang/CharSequence;
.end method
