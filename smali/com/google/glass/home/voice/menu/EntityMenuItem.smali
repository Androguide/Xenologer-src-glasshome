.class public abstract Lcom/google/glass/home/voice/menu/EntityMenuItem;
.super Lcom/google/glass/home/voice/menu/VoiceMenuItem;
.source "EntityMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;,
        Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;,
        Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;,
        Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final entity:Lcom/google/googlex/glass/common/proto/Entity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/glass/home/voice/menu/EntityMenuItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter "entity"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 39
    return-void
.end method

.method varargs constructor <init>(Lcom/google/googlex/glass/common/proto/Entity;[Lcom/google/glass/home/voice/menu/Requirement;)V
    .locals 1
    .parameter "entity"
    .parameter "requirements"

    .prologue
    .line 42
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;-><init>(Ljava/util/List;)V

    .line 43
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->hasPhoneNumber(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->hasEmailAddress(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->sendMessage(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static asContactMenuItems(Ljava/util/List;Lcom/google/glass/voice/VoiceCommand;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "lastCommand"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;",
            "Lcom/google/glass/voice/VoiceCommand;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/menu/EntityMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, contactEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 275
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/EntityMenuItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 276
    .local v0, contactEntity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v0, p1}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->newContactMenuItem(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/home/voice/menu/EntityMenuItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v0           #contactEntity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    return-object v2
.end method

.method public static asPlusShareTargetMenuItems(Ljava/util/List;Lcom/google/glass/voice/VoiceCommand;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter "lastCommand"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;",
            "Lcom/google/glass/voice/VoiceCommand;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/menu/EntityMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, plusShareTargetEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    sget-object v3, Lcom/google/glass/voice/VoiceCommand;->HANGOUT_WITH:Lcom/google/glass/voice/VoiceCommand;

    if-eq p1, v3, :cond_0

    .line 300
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected voice command triggered the share target list"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 305
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/EntityMenuItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/Entity;

    .line 306
    .local v2, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    new-instance v3, Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;

    invoke-direct {v3, v2}, Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    .end local v2           #shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_1
    return-object v1
.end method

.method private static hasEmailAddress(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;
    .locals 1
    .parameter "entity"

    .prologue
    .line 256
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$2;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    return-object v0
.end method

.method private static hasPhoneNumber(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;
    .locals 1
    .parameter "entity"

    .prologue
    .line 239
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$1;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    return-object v0
.end method

.method private static newContactMenuItem(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/home/voice/menu/EntityMenuItem;
    .locals 2
    .parameter "contactEntity"
    .parameter "lastCommand"

    .prologue
    .line 282
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->CALL:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v0, :cond_0

    .line 283
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    .line 290
    :goto_0
    return-object v0

    .line 286
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v0, :cond_2

    .line 287
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SMS_FROM_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    goto :goto_0

    .line 290
    :cond_1
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    goto :goto_0

    .line 294
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected voice command triggered the contact list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sendMessage(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "environment"
    .parameter "spoken"
    .parameter "messageType"
    .parameter "toId"
    .parameter "toName"

    .prologue
    const/4 v6, 0x0

    .line 203
    invoke-interface {p0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    .line 204
    .local v0, context:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, voiceMessageIntent:Landroid/content/Intent;
    const-string v2, "MESSAGE_TYPE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v2, "TO_ID"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v2, "TO_NAME"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v2, "should_finish_turn_screen_off"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    sget-object v2, Lcom/google/glass/home/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    const-string v3, "Initiating send message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v2, 0x3

    sget-object v3, Lcom/google/glass/home/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", toId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-interface {p0, v6}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setAnimateOnNextPause(Z)V

    .line 214
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/logging/UserEventAction;

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 216
    invoke-virtual {v0, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 217
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 84
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 87
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 89
    check-cast v0, Lcom/google/glass/home/voice/menu/EntityMenuItem;

    .line 90
    .local v0, other:Lcom/google/glass/home/voice/menu/EntityMenuItem;
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    if-nez v3, :cond_4

    .line 91
    iget-object v3, v0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    if-eqz v3, :cond_0

    move v1, v2

    .line 92
    goto :goto_0

    .line 94
    :cond_4
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    iget-object v4, v0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/Entity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 95
    goto :goto_0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    const/16 v0, 0x1f

    .line 73
    .local v0, prime:I
    const/4 v1, 0x1

    .line 74
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 75
    return v1

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public matches(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 5
    .parameter "voiceCommand"

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getSemanticTag()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, semanticTag:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 55
    sget-object v1, Lcom/google/glass/home/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    const-string v2, "VoiceCommand with null semantic tag compared against EntityMenuItem! Stack trace included for investigation, but this is not a crash."

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/home/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VoiceCommand with null semantic tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    .line 61
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntityMenuItem [entity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
