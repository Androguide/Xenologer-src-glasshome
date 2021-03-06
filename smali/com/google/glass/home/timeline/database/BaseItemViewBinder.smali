.class public abstract Lcom/google/glass/home/timeline/database/BaseItemViewBinder;
.super Ljava/lang/Object;
.source "BaseItemViewBinder.java"

# interfaces
.implements Lcom/google/glass/home/timeline/database/ItemViewBinder;


# static fields
.field public static final BUNDLE_PAGE_PREFIX:Ljava/lang/String; = ":"

.field public static final TEXT_CONTINUED_ID_POSTFIX:Ljava/lang/String; = ":cont"


# instance fields
.field private glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;

.field private timestampWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;

    return-void
.end method

.method private bindGlasswareIcon(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "view"

    .prologue
    .line 124
    sget v2, Lcom/google/glass/home/R$id;->source_icon:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 126
    .local v0, iconView:Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSource()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v3, "api:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v3, "api:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, projectId:Ljava/lang/String;
    new-instance v2, Lcom/google/glass/util/GlasswareIconLoadingTask;

    sget-object v3, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->SMALL:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    invoke-direct {v2, p1, v1, v3, v0}, Lcom/google/glass/util/GlasswareIconLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V

    iput-object v2, p0, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;

    .line 130
    iget-object v2, p0, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;

    invoke-static {p3, v2}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 134
    .end local v1           #projectId:Ljava/lang/String;
    :goto_0
    return-void

    .line 132
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindInfo(Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/view/View;)V
    .locals 3
    .parameter "item"
    .parameter "view"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->provideInfoText(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, infoText:Ljava/lang/String;
    sget v2, Lcom/google/glass/home/R$id;->info:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 159
    .local v1, infoView:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    invoke-virtual {v1, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindSyncIcon(Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/view/View;)V
    .locals 4
    .parameter "item"
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 137
    sget v1, Lcom/google/glass/home/R$id;->sync:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 139
    .local v0, syncingView:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->shouldHideSyncIcon(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->canSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->isSyncingToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->isSyncingToCloud(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindTimestamp(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/view/View;)V
    .locals 12
    .parameter "context"
    .parameter "item"
    .parameter "view"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 86
    sget v7, Lcom/google/glass/home/R$id;->timestamp:I

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/TypophileTextView;

    .line 88
    .local v3, timeView:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v4

    .line 91
    .local v4, timestamp:J
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasPinScore()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getPinScore()I

    move-result v7

    if-lez v7, :cond_2

    move v1, v8

    .line 97
    .local v1, hasPinScore:Z
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-eqz v7, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasDisplayTime()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->shouldShowTimestamp(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 100
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iput v9, p0, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->timestampWidth:I

    .line 121
    :goto_1
    return-void

    .end local v1           #hasPinScore:Z
    :cond_2
    move v1, v9

    .line 91
    goto :goto_0

    .line 105
    .restart local v1       #hasPinScore:Z
    :cond_3
    invoke-static {p1, v4, v5}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, relativeTime:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v8, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Attachment;->hasCreationTime()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Attachment;->getCreationTime()J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, toRelativeTime:Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 114
    sget v7, Lcom/google/glass/home/R$string;->timeline_time_from_to:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v9

    aput-object v6, v10, v8

    invoke-virtual {p1, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .end local v6           #toRelativeTime:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v3}, Lcom/google/glass/widget/TypophileTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, p0, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->timestampWidth:I

    goto :goto_1
.end method


# virtual methods
.method protected adjustBundleItemIndex(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;ILcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 3
    .parameter "builder"
    .parameter "index"
    .parameter "originalItem"

    .prologue
    .line 198
    if-eqz p2, :cond_0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, id:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 202
    .end local v0           #id:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)Z
    .locals 2
    .parameter "context"
    .parameter "item"
    .parameter "inBundle"
    .parameter "isReadMore"
    .parameter "view"
    .parameter "bitmapFactory"
    .parameter "textClipListener"

    .prologue
    .line 47
    if-nez p4, :cond_0

    .line 48
    invoke-direct {p0, p1, p2, p5}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->bindTimestamp(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/view/View;)V

    .line 49
    invoke-direct {p0, p1, p2, p5}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->bindGlasswareIcon(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/view/View;)V

    .line 50
    invoke-direct {p0, p2, p5}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->bindSyncIcon(Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/view/View;)V

    .line 51
    invoke-direct {p0, p2, p5}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->bindInfo(Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/view/View;)V

    .line 55
    :cond_0
    sget v1, Lcom/google/glass/home/R$id;->timeline_item_footer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, timelineItemFooter:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 57
    if-eqz p4, :cond_2

    .line 58
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p7}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)Z

    move-result v1

    return v1

    .line 60
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public clear(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "willBindSameItem"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/GlasswareIconLoadingTask;->cancel(Z)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;

    .line 186
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->onClear(Landroid/view/View;Z)V

    .line 187
    return-void
.end method

.method protected getBundleItemIndex(Lcom/google/googlex/glass/common/proto/TimelineItem;)I
    .locals 3
    .parameter "item"

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, id:Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 213
    .local v1, splitPoint:I
    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 216
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract getLayout()I
.end method

.method protected getTimestampWidth()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;->timestampWidth:I

    return v0
.end method

.method protected abstract onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)Z
.end method

.method protected abstract onClear(Landroid/view/View;Z)V
.end method

.method protected provideInfoText(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;
    .locals 1
    .parameter "item"

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method protected shouldHideSyncIcon(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowTimestamp(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method
