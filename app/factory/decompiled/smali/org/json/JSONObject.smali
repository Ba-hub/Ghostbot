.class public Lorg/json/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/json/JSONObject$1;,
        Lorg/json/JSONObject$Null;
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/Object;


# instance fields
.field private map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 140
    new-instance v0, Lorg/json/JSONObject$Null;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/json/JSONObject$Null;-><init>(Lorg/json/JSONObject$1;)V

    sput-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 147
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lorg/json/JSONObject;->map:Ljava/util/Map;

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 278
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/json/JSONObject;->populateInternalMap(Ljava/lang/Object;Z)V

    .line 279
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 6

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 294
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lorg/json/JSONObject;->populateInternalMap(Ljava/lang/Object;Z)V

    .line 295
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 379
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 380
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object v3, v7

    .line 381
    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move-object v8, v2

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 382
    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 384
    move-object v7, v0

    move-object v8, v5

    move-object v9, v3

    move-object v10, v5

    :try_start_0
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 381
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 385
    :catch_0
    move-exception v7

    move-object v6, v7

    goto :goto_1

    .line 389
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Lorg/json/JSONTokener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 403
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 235
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v3, v2, Lorg/json/JSONObject;->map:Ljava/util/Map;

    .line 236
    return-void

    .line 235
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 12

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 247
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lorg/json/JSONObject;->map:Ljava/util/Map;

    .line 248
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 249
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 250
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v4, v5

    .line 251
    move-object v5, v0

    iget-object v5, v5, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move v10, v2

    invoke-direct {v8, v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 252
    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 161
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 162
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONTokener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 178
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextClean()C

    move-result v4

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_1

    .line 179
    move-object v4, v1

    const-string v5, "A JSONObject text must begin with \'{\'"

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 217
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 182
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextClean()C

    move-result v4

    move v2, v4

    .line 183
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 189
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 190
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 197
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextClean()C

    move-result v4

    move v2, v4

    .line 198
    move v4, v2

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_3

    .line 199
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->next()C

    move-result v4

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_2

    .line 200
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 205
    :cond_2
    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 211
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextClean()C

    move-result v4

    sparse-switch v4, :sswitch_data_1

    .line 222
    move-object v4, v1

    const-string v5, "Expected a \',\' or \'}\'"

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 185
    :sswitch_0
    move-object v4, v1

    const-string v5, "A JSONObject text must end with \'}\'"

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 220
    :goto_0
    :sswitch_1
    return-void

    .line 202
    :cond_3
    move v4, v2

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_2

    .line 203
    move-object v4, v1

    const-string v5, "Expected a \':\' after a key"

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 214
    :sswitch_2
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextClean()C

    move-result v4

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_0

    .line 215
    goto :goto_0

    .line 220
    :sswitch_3
    goto :goto_0

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch

    .line 211
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 8

    .prologue
    .line 469
    move-wide v1, p0

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_0

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 470
    :cond_0
    const-string v4, "null"

    move-object v1, v4

    .line 484
    :goto_0
    return-object v1

    .line 475
    :cond_1
    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 476
    move-object v4, v3

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_3

    move-object v4, v3

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_3

    move-object v4, v3

    const/16 v5, 0x45

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_3

    .line 477
    :goto_1
    move-object v4, v3

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 478
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 480
    :cond_2
    move-object v4, v3

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 481
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 484
    :cond_3
    move-object v4, v3

    move-object v1, v4

    goto :goto_0
.end method

.method public static getNames(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 10

    .prologue
    .line 644
    move-object v0, p0

    move-object v6, v0

    if-nez v6, :cond_0

    .line 645
    const/4 v6, 0x0

    move-object v0, v6

    .line 657
    :goto_0
    return-object v0

    .line 647
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v1, v6

    .line 648
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v2, v6

    .line 649
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .line 650
    move v6, v3

    if-nez v6, :cond_1

    .line 651
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 653
    :cond_1
    move v6, v3

    new-array v6, v6, [Ljava/lang/String;

    move-object v4, v6

    .line 654
    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 655
    move-object v6, v4

    move v7, v5

    move-object v8, v2

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 654
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 657
    :cond_2
    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method public static getNames(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 8

    .prologue
    .line 623
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    move v1, v5

    .line 624
    move v5, v1

    if-nez v5, :cond_0

    .line 625
    const/4 v5, 0x0

    move-object v0, v5

    .line 634
    :goto_0
    return-object v0

    .line 627
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    .line 628
    move v5, v1

    new-array v5, v5, [Ljava/lang/String;

    move-object v3, v5

    .line 629
    const/4 v5, 0x0

    move v4, v5

    .line 630
    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 631
    move-object v5, v3

    move v6, v4

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 632
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 634
    :cond_1
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method

.method private isStandardProperty(Ljava/lang/Class;)Z
    .locals 4

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-class v3, Ljava/lang/Short;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-class v3, Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-class v3, Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 738
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    .line 739
    new-instance v2, Lorg/json/JSONException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Null pointer"

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 741
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 745
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 746
    move-object v2, v1

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    move-object v2, v1

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    move-object v2, v1

    const/16 v3, 0x45

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    .line 747
    :goto_0
    move-object v2, v1

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 748
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 750
    :cond_1
    move-object v2, v1

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 751
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 754
    :cond_2
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private populateInternalMap(Ljava/lang/Object;Z)V
    .locals 17

    .prologue
    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    move-object v3, v10

    .line 302
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    if-nez v10, :cond_0

    .line 303
    const/4 v10, 0x0

    move v2, v10

    .line 306
    :cond_0
    move v10, v2

    if-eqz v10, :cond_4

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    :goto_0
    move-object v4, v10

    .line 308
    const/4 v10, 0x0

    move v5, v10

    :goto_1
    move v10, v5

    move-object v11, v4

    array-length v11, v11

    if-ge v10, v11, :cond_e

    .line 310
    move-object v10, v4

    move v11, v5

    :try_start_0
    aget-object v10, v10, v11

    move-object v6, v10

    .line 311
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 312
    const-string v10, ""

    move-object v8, v10

    .line 313
    move-object v10, v7

    const-string v11, "get"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 314
    move-object v10, v7

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 318
    :cond_1
    :goto_2
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    move-object v10, v8

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    if-nez v10, :cond_3

    .line 321
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 322
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 328
    :cond_2
    :goto_3
    move-object v10, v6

    move-object v11, v1

    const/4 v12, 0x0

    check-cast v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 329
    move-object v10, v9

    if-nez v10, :cond_7

    .line 330
    move-object v10, v0

    iget-object v10, v10, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v11, v8

    sget-object v12, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 308
    :cond_3
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 306
    :cond_4
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    goto :goto_0

    .line 315
    :cond_5
    move-object v10, v7

    :try_start_1
    const-string v11, "is"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 316
    move-object v10, v7

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    goto :goto_2

    .line 323
    :cond_6
    move-object v10, v8

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-nez v10, :cond_2

    .line 324
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v8

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v8

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    goto :goto_3

    .line 331
    :cond_7
    move-object v10, v9

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 332
    move-object v10, v0

    iget-object v10, v10, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v11, v8

    new-instance v12, Lorg/json/JSONArray;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v9

    move v15, v2

    invoke-direct {v13, v14, v15}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_4

    .line 333
    :cond_8
    move-object v10, v9

    instance-of v10, v10, Ljava/util/Collection;

    if-eqz v10, :cond_9

    .line 334
    move-object v10, v0

    iget-object v10, v10, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v11, v8

    new-instance v12, Lorg/json/JSONArray;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v9

    check-cast v14, Ljava/util/Collection;

    move v15, v2

    invoke-direct {v13, v14, v15}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;Z)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_4

    .line 335
    :cond_9
    move-object v10, v9

    instance-of v10, v10, Ljava/util/Map;

    if-eqz v10, :cond_a

    .line 336
    move-object v10, v0

    iget-object v10, v10, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v11, v8

    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v9

    check-cast v14, Ljava/util/Map;

    move v15, v2

    invoke-direct {v13, v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;Z)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_4

    .line 337
    :cond_a
    move-object v10, v0

    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONObject;->isStandardProperty(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 338
    move-object v10, v0

    iget-object v10, v10, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v11, v8

    move-object v12, v9

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_4

    .line 340
    :cond_b
    move-object v10, v9

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "java"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    move-object v10, v9

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    if-nez v10, :cond_d

    .line 342
    :cond_c
    move-object v10, v0

    iget-object v10, v10, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v11, v8

    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_4

    .line 344
    :cond_d
    move-object v10, v0

    iget-object v10, v10, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v11, v8

    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v9

    move v15, v2

    invoke-direct {v13, v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto/16 :goto_4

    .line 348
    :catch_0
    move-exception v10

    move-object v6, v10

    .line 349
    new-instance v10, Ljava/lang/RuntimeException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v6

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 352
    :cond_e
    return-void
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 1111
    move-object v0, p0

    move-object v7, v0

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 1112
    :cond_0
    const-string v7, "\"\""

    move-object v0, v7

    .line 1164
    :goto_0
    return-object v0

    .line 1116
    :cond_1
    const/4 v7, 0x0

    move v2, v7

    .line 1118
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v4, v7

    .line 1119
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move v9, v4

    const/4 v10, 0x4

    add-int/lit8 v9, v9, 0x4

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v5, v7

    .line 1122
    move-object v7, v5

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1123
    const/4 v7, 0x0

    move v3, v7

    :goto_1
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_6

    .line 1124
    move v7, v2

    move v1, v7

    .line 1125
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v2, v7

    .line 1126
    move v7, v2

    sparse-switch v7, :sswitch_data_0

    .line 1154
    move v7, v2

    const/16 v8, 0x20

    if-lt v7, v8, :cond_3

    move v7, v2

    const/16 v8, 0x80

    if-lt v7, v8, :cond_2

    move v7, v2

    const/16 v8, 0xa0

    if-lt v7, v8, :cond_3

    :cond_2
    move v7, v2

    const/16 v8, 0x2000

    if-lt v7, v8, :cond_5

    move v7, v2

    const/16 v8, 0x2100

    if-ge v7, v8, :cond_5

    .line 1156
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1157
    move-object v7, v5

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1123
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1129
    :sswitch_0
    move-object v7, v5

    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1130
    move-object v7, v5

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1131
    goto :goto_2

    .line 1133
    :sswitch_1
    move v7, v1

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_4

    .line 1134
    move-object v7, v5

    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1136
    :cond_4
    move-object v7, v5

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1137
    goto :goto_2

    .line 1139
    :sswitch_2
    move-object v7, v5

    const-string v8, "\\b"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1140
    goto :goto_2

    .line 1142
    :sswitch_3
    move-object v7, v5

    const-string v8, "\\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1143
    goto :goto_2

    .line 1145
    :sswitch_4
    move-object v7, v5

    const-string v8, "\\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1146
    goto :goto_2

    .line 1148
    :sswitch_5
    move-object v7, v5

    const-string v8, "\\f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1149
    goto :goto_2

    .line 1151
    :sswitch_6
    move-object v7, v5

    const-string v8, "\\r"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1152
    goto :goto_2

    .line 1159
    :cond_5
    move-object v7, v5

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    goto :goto_2

    .line 1163
    :cond_6
    move-object v7, v5

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1164
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 1126
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 1194
    move-object v0, p0

    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1195
    move-object v5, v0

    move-object v0, v5

    .line 1248
    :goto_0
    return-object v0

    .line 1197
    :cond_0
    move-object v5, v0

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1198
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v5

    goto :goto_0

    .line 1200
    :cond_1
    move-object v5, v0

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1201
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v5

    goto :goto_0

    .line 1203
    :cond_2
    move-object v5, v0

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1204
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object v0, v5

    goto :goto_0

    .line 1215
    :cond_3
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v1, v5

    .line 1216
    move v5, v1

    const/16 v6, 0x30

    if-lt v5, v6, :cond_4

    move v5, v1

    const/16 v6, 0x39

    if-le v5, v6, :cond_5

    :cond_4
    move v5, v1

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_5

    move v5, v1

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_5

    move v5, v1

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_9

    .line 1217
    :cond_5
    move v5, v1

    const/16 v6, 0x30

    if-ne v5, v6, :cond_7

    .line 1218
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_8

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x78

    if-eq v5, v6, :cond_6

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x58

    if-ne v5, v6, :cond_8

    .line 1221
    :cond_6
    :try_start_0
    new-instance v5, Ljava/lang/Integer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    goto :goto_0

    .line 1223
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1235
    :cond_7
    :goto_1
    :try_start_1
    new-instance v5, Ljava/lang/Integer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v5

    goto/16 :goto_0

    .line 1228
    :cond_8
    :try_start_2
    new-instance v5, Ljava/lang/Integer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/16 v8, 0x8

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v5

    goto/16 :goto_0

    .line 1229
    :catch_1
    move-exception v5

    move-object v2, v5

    goto :goto_1

    .line 1236
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 1238
    :try_start_3
    new-instance v5, Ljava/lang/Long;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v5

    goto/16 :goto_0

    .line 1239
    :catch_3
    move-exception v5

    move-object v3, v5

    .line 1241
    :try_start_4
    new-instance v5, Ljava/lang/Double;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v5

    goto/16 :goto_0

    .line 1242
    :catch_4
    move-exception v5

    move-object v4, v5

    .line 1248
    :cond_9
    move-object v5, v0

    move-object v0, v5

    goto/16 :goto_0
.end method

.method static testValidity(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1258
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_3

    .line 1259
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 1260
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1261
    :cond_0
    new-instance v1, Lorg/json/JSONException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "JSON does not allow non-finite numbers."

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1264
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 1265
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1266
    :cond_2
    new-instance v1, Lorg/json/JSONException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "JSON does not allow non-finite numbers."

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1271
    :cond_3
    return-void
.end method

.method static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1423
    move-object v0, p0

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1424
    :cond_0
    const-string v3, "null"

    move-object v0, v3

    .line 1454
    :goto_0
    return-object v0

    .line 1426
    :cond_1
    move-object v3, v0

    instance-of v3, v3, Lorg/json/JSONString;

    if-eqz v3, :cond_3

    .line 1429
    move-object v3, v0

    :try_start_0
    check-cast v3, Lorg/json/JSONString;

    invoke-interface {v3}, Lorg/json/JSONString;->toJSONString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 1433
    move-object v3, v1

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1434
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    goto :goto_0

    .line 1430
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1431
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1436
    :cond_2
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad value from toJSONString: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1438
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_4

    .line 1439
    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1441
    :cond_4
    move-object v3, v0

    instance-of v3, v3, Ljava/lang/Boolean;

    if-nez v3, :cond_5

    move-object v3, v0

    instance-of v3, v3, Lorg/json/JSONObject;

    if-nez v3, :cond_5

    move-object v3, v0

    instance-of v3, v3, Lorg/json/JSONArray;

    if-eqz v3, :cond_6

    .line 1443
    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1445
    :cond_6
    move-object v3, v0

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_7

    .line 1446
    new-instance v3, Lorg/json/JSONObject;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1448
    :cond_7
    move-object v3, v0

    instance-of v3, v3, Ljava/util/Collection;

    if-eqz v3, :cond_8

    .line 1449
    new-instance v3, Lorg/json/JSONArray;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 1451
    :cond_8
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1452
    new-instance v3, Lorg/json/JSONArray;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 1454
    :cond_9
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0
.end method

.method static valueToString(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1474
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1475
    :cond_0
    const-string v4, "null"

    move-object v0, v4

    .line 1508
    :goto_0
    return-object v0

    .line 1478
    :cond_1
    move-object v4, v0

    :try_start_0
    instance-of v4, v4, Lorg/json/JSONString;

    if-eqz v4, :cond_2

    .line 1479
    move-object v4, v0

    check-cast v4, Lorg/json/JSONString;

    invoke-interface {v4}, Lorg/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1480
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1481
    move-object v4, v3

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    .line 1487
    :cond_2
    :goto_1
    move-object v4, v0

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_3

    .line 1488
    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    invoke-static {v4}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1484
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_1

    .line 1490
    :cond_3
    move-object v4, v0

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 1491
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1493
    :cond_4
    move-object v4, v0

    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_5

    .line 1494
    move-object v4, v0

    check-cast v4, Lorg/json/JSONObject;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1496
    :cond_5
    move-object v4, v0

    instance-of v4, v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_6

    .line 1497
    move-object v4, v0

    check-cast v4, Lorg/json/JSONArray;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1499
    :cond_6
    move-object v4, v0

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_7

    .line 1500
    new-instance v4, Lorg/json/JSONObject;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1502
    :cond_7
    move-object v4, v0

    instance-of v4, v4, Ljava/util/Collection;

    if-eqz v4, :cond_8

    .line 1503
    new-instance v4, Lorg/json/JSONArray;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 1505
    :cond_8
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1506
    new-instance v4, Lorg/json/JSONArray;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 1508
    :cond_9
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 420
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    invoke-static {v4}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 421
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 422
    move-object v4, v3

    if-nez v4, :cond_1

    .line 423
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    instance-of v6, v6, Lorg/json/JSONArray;

    if-eqz v6, :cond_0

    new-instance v6, Lorg/json/JSONArray;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    :goto_0
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 431
    :goto_1
    move-object v4, v0

    move-object v0, v4

    return-object v0

    .line 423
    :cond_0
    move-object v6, v2

    goto :goto_0

    .line 426
    :cond_1
    move-object v4, v3

    instance-of v4, v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    .line 427
    move-object v4, v3

    check-cast v4, Lorg/json/JSONArray;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    goto :goto_1

    .line 429
    :cond_2
    move-object v4, v0

    move-object v5, v1

    new-instance v6, Lorg/json/JSONArray;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_1
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 448
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    invoke-static {v4}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 449
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 450
    move-object v4, v3

    if-nez v4, :cond_0

    .line 451
    move-object v4, v0

    move-object v5, v1

    new-instance v6, Lorg/json/JSONArray;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 458
    :goto_0
    move-object v4, v0

    move-object v0, v4

    return-object v0

    .line 452
    :cond_0
    move-object v4, v3

    instance-of v4, v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    .line 453
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    check-cast v6, Lorg/json/JSONArray;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_0

    .line 455
    :cond_1
    new-instance v4, Lorg/json/JSONException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSONObject["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is not a JSONArray."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 497
    move-object v3, v2

    if-nez v3, :cond_0

    .line 498
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONObject["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 501
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 514
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 515
    move-object v3, v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 522
    :goto_0
    return v0

    .line 519
    :cond_1
    move-object v3, v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 522
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 524
    :cond_3
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONObject["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a Boolean."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 537
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 539
    move-object v4, v2

    :try_start_0
    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    :goto_0
    move-wide v0, v4

    return-wide v0

    :cond_0
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 542
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 543
    new-instance v4, Lorg/json/JSONException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSONObject["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-static {v7}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is not a number."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 559
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 560
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    :goto_0
    move v1, v4

    return v1

    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 574
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 575
    move-object v3, v2

    instance-of v3, v3, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 576
    move-object v3, v2

    check-cast v3, Lorg/json/JSONArray;

    move-object v0, v3

    return-object v0

    .line 578
    :cond_0
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONObject["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a JSONArray."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 592
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 593
    move-object v3, v2

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 594
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    move-object v0, v3

    return-object v0

    .line 596
    :cond_0
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONObject["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a JSONObject."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 611
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 612
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    :goto_0
    move-wide v1, v4

    return-wide v1

    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 669
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 679
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 691
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 701
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 711
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public names()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 722
    move-object v0, p0

    new-instance v3, Lorg/json/JSONArray;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object v1, v3

    .line 723
    move-object v3, v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 724
    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 725
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_0

    .line 727
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    move-object v0, v3

    return-object v0

    :cond_1
    move-object v3, v1

    goto :goto_1
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 764
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 777
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    .line 792
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    .line 794
    :goto_0
    return v0

    .line 793
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 794
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 6

    .prologue
    .line 823
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 10

    .prologue
    .line 839
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 840
    move-object v5, v4

    instance-of v5, v5, Ljava/lang/Number;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    :goto_0
    move-wide v0, v5

    .line 843
    :goto_1
    return-wide v0

    .line 840
    :cond_0
    new-instance v5, Ljava/lang/Double;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    goto :goto_0

    .line 842
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 843
    move-wide v5, v2

    move-wide v0, v5

    goto :goto_1
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 858
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 874
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    .line 876
    :goto_0
    return v0

    .line 875
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 876
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method public optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 890
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 891
    move-object v3, v2

    instance-of v3, v3, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/json/JSONArray;

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 904
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 905
    move-object v3, v2

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 919
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 8

    .prologue
    .line 935
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    move-wide v0, v5

    .line 937
    :goto_0
    return-wide v0

    .line 936
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 937
    move-wide v5, v2

    move-wide v0, v5

    goto :goto_0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 951
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 964
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 965
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v2

    goto :goto_0
.end method

.method public put(Ljava/lang/String;D)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 992
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    new-instance v6, Ljava/lang/Double;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-wide v8, v2

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 993
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public put(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1006
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    new-instance v5, Ljava/lang/Integer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v2

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1007
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public put(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1020
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    new-instance v6, Ljava/lang/Long;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-wide v8, v2

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1021
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1051
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-nez v3, :cond_0

    .line 1052
    new-instance v3, Lorg/json/JSONException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Null key."

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1054
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1055
    move-object v3, v2

    invoke-static {v3}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 1056
    move-object v3, v0

    iget-object v3, v3, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1060
    :goto_0
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 1058
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/util/Collection;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 808
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    new-instance v5, Lorg/json/JSONArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 809
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1034
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    new-instance v5, Lorg/json/JSONObject;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1035
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 978
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 979
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 978
    :cond_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public putOnce(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1074
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1075
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1076
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate key \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1078
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1080
    :cond_1
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1095
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1096
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1098
    :cond_0
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1174
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public sortedKeys()Ljava/util/Iterator;
    .locals 5

    .prologue
    .line 1184
    move-object v0, p0

    new-instance v1, Ljava/util/TreeSet;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lorg/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public toJSONArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1283
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1284
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 1290
    :goto_0
    return-object v0

    .line 1286
    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v4

    .line 1287
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1288
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1287
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1290
    :cond_2
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1307
    move-object v0, p0

    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    .line 1308
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1310
    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1311
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1312
    move-object v4, v2

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1314
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 1315
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1316
    move-object v4, v2

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1317
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1318
    goto :goto_0

    .line 1319
    :cond_1
    move-object v4, v2

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1320
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .line 1322
    :goto_1
    return-object v0

    .line 1321
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1322
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1340
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1359
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v9

    move v4, v9

    .line 1360
    move v9, v4

    if-nez v9, :cond_0

    .line 1361
    const-string v9, "{}"

    move-object v0, v9

    .line 1397
    :goto_0
    return-object v0

    .line 1363
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lorg/json/JSONObject;->sortedKeys()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    .line 1364
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "{"

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    .line 1365
    move v9, v2

    move v10, v1

    add-int/2addr v9, v10

    move v7, v9

    .line 1367
    move v9, v4

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 1368
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 1369
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1370
    move-object v9, v6

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1371
    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move v11, v1

    move v12, v2

    invoke-static {v10, v11, v12}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1396
    :cond_1
    move-object v9, v6

    const/16 v10, 0x7d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1397
    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 1384
    :cond_2
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1385
    move-object v9, v6

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1386
    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move v11, v1

    move v12, v7

    invoke-static {v10, v11, v12}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1374
    :cond_3
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1375
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 1376
    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    .line 1377
    move-object v9, v6

    const-string v10, ",\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1381
    :goto_1
    const/4 v9, 0x0

    move v3, v9

    :goto_2
    move v9, v3

    move v10, v7

    if-ge v9, v10, :cond_2

    .line 1382
    move-object v9, v6

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1381
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1379
    :cond_4
    move-object v9, v6

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_1

    .line 1389
    :cond_5
    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 1390
    move-object v9, v6

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1391
    const/4 v9, 0x0

    move v3, v9

    :goto_3
    move v9, v3

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 1392
    move-object v9, v6

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1391
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1523
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move v2, v6

    .line 1524
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .line 1525
    move-object v6, v1

    const/16 v7, 0x7b

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(I)V

    .line 1527
    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1528
    move v6, v2

    if-eqz v6, :cond_0

    .line 1529
    move-object v6, v1

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(I)V

    .line 1531
    :cond_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 1532
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1533
    move-object v6, v1

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(I)V

    .line 1534
    move-object v6, v0

    iget-object v6, v6, Lorg/json/JSONObject;->map:Ljava/util/Map;

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 1535
    move-object v6, v5

    instance-of v6, v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_1

    .line 1536
    move-object v6, v5

    check-cast v6, Lorg/json/JSONObject;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v6

    .line 1542
    :goto_1
    const/4 v6, 0x1

    move v2, v6

    .line 1543
    goto :goto_0

    .line 1537
    :cond_1
    move-object v6, v5

    instance-of v6, v6, Lorg/json/JSONArray;

    if-eqz v6, :cond_2

    .line 1538
    move-object v6, v5

    check-cast v6, Lorg/json/JSONArray;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v6

    goto :goto_1

    .line 1540
    :cond_2
    move-object v6, v1

    move-object v7, v5

    invoke-static {v7}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1546
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 1547
    new-instance v6, Lorg/json/JSONException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1544
    :cond_3
    move-object v6, v1

    const/16 v7, 0x7d

    :try_start_1
    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1545
    move-object v6, v1

    move-object v0, v6

    return-object v0
.end method
