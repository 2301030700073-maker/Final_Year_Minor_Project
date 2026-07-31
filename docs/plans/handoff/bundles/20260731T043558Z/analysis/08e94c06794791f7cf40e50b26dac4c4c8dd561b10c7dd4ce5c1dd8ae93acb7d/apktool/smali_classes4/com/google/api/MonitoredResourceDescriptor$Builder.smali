.class public final Lcom/google/api/MonitoredResourceDescriptor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MonitoredResourceDescriptor.java"

# interfaces
.implements Lcom/google/api/MonitoredResourceDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MonitoredResourceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/MonitoredResourceDescriptor;",
        "Lcom/google/api/MonitoredResourceDescriptor$Builder;",
        ">;",
        "Lcom/google/api/MonitoredResourceDescriptorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 684
    invoke-static {}, Lcom/google/api/MonitoredResourceDescriptor;->access$000()Lcom/google/api/MonitoredResourceDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/MonitoredResourceDescriptor$1;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLabels(Ljava/lang/Iterable;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LabelDescriptor;",
            ">;)",
            "Lcom/google/api/MonitoredResourceDescriptor$Builder;"
        }
    .end annotation

    .line 1160
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1161
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1600(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1145
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    .line 1146
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/LabelDescriptor;

    .line 1145
    invoke-static {v0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->access$1500(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1114
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1115
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->access$1500(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1129
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1130
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {p1}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1400(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1099
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1100
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1400(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public clearDescription()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 998
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 999
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$1100(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public clearDisplayName()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 922
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 923
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$800(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public clearLabels()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1174
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1175
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$1700(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public clearLaunchStage()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1255
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$2100(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public clearName()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 757
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 758
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$200(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public clearType()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 839
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 840
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$500(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabels(I)Lcom/google/api/LabelDescriptor;
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->getLabels(I)Lcom/google/api/LabelDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getLabelsCount()I
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getLabelsCount()I

    move-result v0

    return v0
.end method

.method public getLabelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation

    .line 1030
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    .line 1031
    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getLabelsList()Ljava/util/List;

    move-result-object v0

    .line 1030
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchStage()Lcom/google/api/LaunchStage;
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getLaunchStage()Lcom/google/api/LaunchStage;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchStageValue()I
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getLaunchStageValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeLabels(I)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1188
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1189
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1800(Lcom/google/api/MonitoredResourceDescriptor;I)V

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 984
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 985
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1000(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1014
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1015
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1200(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 907
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$700(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 940
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 941
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$900(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1084
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1085
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    .line 1086
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/LabelDescriptor;

    .line 1085
    invoke-static {v0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->access$1300(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1069
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1070
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->access$1300(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public setLaunchStage(Lcom/google/api/LaunchStage;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1242
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$2000(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/api/LaunchStage;)V

    return-object p0
.end method

.method public setLaunchStageValue(I)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1215
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1216
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1900(Lcom/google/api/MonitoredResourceDescriptor;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 739
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 740
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$100(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 777
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$300(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 824
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 825
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$400(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 856
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 857
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$600(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
