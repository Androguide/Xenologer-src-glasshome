.class Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "GlasswareVoiceInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->createTimelineItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;

.field final synthetic val$currentRecognitionResult:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;

    iput-object p2, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;->val$currentRecognitionResult:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/logging/UserEventAction;

    const-string v2, "c"

    #calls: Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->access$100(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->finish()V

    .line 158
    return-void
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2$1;-><init>(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 168
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;

    #calls: Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->finishAndTurnScreenOffIfRequested()V
    invoke-static {v0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->access$400(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;)V

    .line 169
    return-void
.end method
