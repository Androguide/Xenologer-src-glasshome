.class Lcom/google/glass/home/voice/BaseVoiceInputActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseVoiceInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/BaseVoiceInputActivity;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$5;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iput-object p2, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$5;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$5;->val$postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$5;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 770
    :cond_0
    return-void
.end method
