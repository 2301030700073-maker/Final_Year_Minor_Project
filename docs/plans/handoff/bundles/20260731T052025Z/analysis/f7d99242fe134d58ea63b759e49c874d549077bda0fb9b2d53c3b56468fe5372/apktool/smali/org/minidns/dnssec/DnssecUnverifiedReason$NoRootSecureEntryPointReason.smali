.class public final Lorg/minidns/dnssec/DnssecUnverifiedReason$NoRootSecureEntryPointReason;
.super Lorg/minidns/dnssec/DnssecUnverifiedReason;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final getReasonString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "No secure entry point was found for the root zone (\"Did you forget to configure a root SEP?\")"

    .line 2
    .line 3
    return-object p0
.end method
