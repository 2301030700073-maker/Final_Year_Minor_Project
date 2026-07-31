.class public final Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public authPlain:Z

.field public cramMD5:Z

.field public external:Z

.field public stls:Z

.field public top:Z

.field public uidl:Z


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->cramMD5:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->authPlain:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->stls:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->top:Z

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->uidl:Z

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Capabilities;->external:Z

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v6, "CRAM-MD5 "

    .line 16
    .line 17
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ", PLAIN "

    .line 24
    .line 25
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ", STLS "

    .line 32
    .line 33
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", TOP "

    .line 37
    .line 38
    const-string v1, ", UIDL "

    .line 39
    .line 40
    invoke-static {v5, v2, v0, v3, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ", EXTERNAL "

    .line 47
    .line 48
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
