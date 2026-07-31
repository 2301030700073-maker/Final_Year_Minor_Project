.class public final Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final parser:Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadMapper;->$r8$clinit:I

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadParser;Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadMapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;->parser:Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadParser;

    .line 5
    .line 6
    return-void
.end method
