.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionEvent"
.end annotation


# static fields
.field public static final COMBINED_RESULT_FIELD_NUMBER:I = 0x5

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x1

.field public static final EVENT_TYPE_RECOGNITION_COMPLETED:I = 0x1

.field public static final EVENT_TYPE_RECOGNITION_RESULT:I = 0x0

.field public static final GENERATION_TIME_MS_FIELD_NUMBER:I = 0x6

.field public static final PARTIAL_RESULT_FIELD_NUMBER:I = 0x4

.field public static final RESULT_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private combinedResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

.field private eventType_:I

.field private generationTimeMs_:J

.field private hasCombinedResult:Z

.field private hasEventType:Z

.field private hasGenerationTimeMs:Z

.field private hasPartialResult:Z

.field private hasResult:Z

.field private hasStatus:Z

.field private partialResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

.field private result_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1858
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1867
    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->eventType_:I

    .line 1884
    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->status_:I

    .line 1901
    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 1921
    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1941
    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 1961
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->generationTimeMs_:J

    .line 2022
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->cachedSize:I

    .line 1858
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2120
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2114
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1

    .prologue
    .line 1976
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->clearEventType()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 1977
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->clearStatus()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 1978
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->clearResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 1979
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->clearPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 1980
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->clearCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 1981
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->clearGenerationTimeMs()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 1982
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->cachedSize:I

    .line 1983
    return-object p0
.end method

.method public clearCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1

    .prologue
    .line 1953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasCombinedResult:Z

    .line 1954
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 1955
    return-object p0
.end method

.method public clearEventType()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1876
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasEventType:Z

    .line 1877
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->eventType_:I

    .line 1878
    return-object p0
.end method

.method public clearGenerationTimeMs()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 2

    .prologue
    .line 1970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasGenerationTimeMs:Z

    .line 1971
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->generationTimeMs_:J

    .line 1972
    return-object p0
.end method

.method public clearPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1

    .prologue
    .line 1933
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasPartialResult:Z

    .line 1934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1935
    return-object p0
.end method

.method public clearResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1

    .prologue
    .line 1913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasResult:Z

    .line 1914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 1915
    return-object p0
.end method

.method public clearStatus()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1893
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasStatus:Z

    .line 1894
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->status_:I

    .line 1895
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2025
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 2027
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getSerializedSize()I

    .line 2029
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->cachedSize:I

    return v0
.end method

.method public getCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 1869
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->eventType_:I

    return v0
.end method

.method public getGenerationTimeMs()J
    .locals 2

    .prologue
    .line 1962
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->generationTimeMs_:J

    return-wide v0
.end method

.method public getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    return-object v0
.end method

.method public getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2034
    const/4 v0, 0x0

    .line 2035
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasEventType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2036
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2039
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2040
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2043
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2044
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2047
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasPartialResult()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2048
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2051
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasCombinedResult()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2052
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2055
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasGenerationTimeMs()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2056
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getGenerationTimeMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2059
    :cond_5
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->cachedSize:I

    .line 2060
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1886
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->status_:I

    return v0
.end method

.method public hasCombinedResult()Z
    .locals 1

    .prologue
    .line 1942
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasCombinedResult:Z

    return v0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 1868
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasEventType:Z

    return v0
.end method

.method public hasGenerationTimeMs()Z
    .locals 1

    .prologue
    .line 1963
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasGenerationTimeMs:Z

    return v0
.end method

.method public hasPartialResult()Z
    .locals 1

    .prologue
    .line 1922
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasPartialResult:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 1902
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasResult:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 1885
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1987
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1988
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1996
    :cond_0
    :goto_0
    return v0

    .line 1990
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasPartialResult()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1991
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1993
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasCombinedResult()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1994
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1996
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1855
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2068
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2069
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2073
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2074
    :sswitch_0
    return-object p0

    .line 2079
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->setEventType(I)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    goto :goto_0

    .line 2083
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->setStatus(I)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    goto :goto_0

    .line 2087
    :sswitch_3
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;-><init>()V

    .line 2088
    .local v1, value:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2089
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->setResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    goto :goto_0

    .line 2093
    .end local v1           #value:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    :sswitch_4
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;-><init>()V

    .line 2094
    .local v1, value:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2095
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->setPartialResult(Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    goto :goto_0

    .line 2099
    .end local v1           #value:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    :sswitch_5
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;-><init>()V

    .line 2100
    .local v1, value:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2101
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->setCombinedResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    goto :goto_0

    .line 2105
    .end local v1           #value:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->setGenerationTimeMs(J)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    goto :goto_0

    .line 2069
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public setCombinedResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1945
    if-nez p1, :cond_0

    .line 1946
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1948
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasCombinedResult:Z

    .line 1949
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 1950
    return-object p0
.end method

.method public setEventType(I)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasEventType:Z

    .line 1872
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->eventType_:I

    .line 1873
    return-object p0
.end method

.method public setGenerationTimeMs(J)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasGenerationTimeMs:Z

    .line 1966
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->generationTimeMs_:J

    .line 1967
    return-object p0
.end method

.method public setPartialResult(Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1925
    if-nez p1, :cond_0

    .line 1926
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1928
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasPartialResult:Z

    .line 1929
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1930
    return-object p0
.end method

.method public setResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1905
    if-nez p1, :cond_0

    .line 1906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1908
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasResult:Z

    .line 1909
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 1910
    return-object p0
.end method

.method public setStatus(I)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasStatus:Z

    .line 1889
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->status_:I

    .line 1890
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2002
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2003
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2005
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2006
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2008
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2009
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2011
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasPartialResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2012
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2014
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasCombinedResult()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2015
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2017
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasGenerationTimeMs()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2018
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getGenerationTimeMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2020
    :cond_5
    return-void
.end method
