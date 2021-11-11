.class public Lorg/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private myArrayList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 96
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 194
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    move-object v4, v1

    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    .line 196
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 197
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-void

    .line 200
    :cond_1
    new-instance v4, Lorg/json/JSONException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 212
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    move-object v5, v1

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    .line 214
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 215
    move-object v5, v0

    new-instance v6, Lorg/json/JSONObject;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move v9, v4

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    move v9, v2

    invoke-direct {v7, v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void

    .line 218
    :cond_1
    new-instance v5, Lorg/json/JSONException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v6, v7}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Lorg/json/JSONTokener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 7

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 166
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v3, v2, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 169
    return-void

    .line 166
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 10

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 179
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 180
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 181
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    move-object v4, v0

    iget-object v4, v4, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    new-instance v5, Lorg/json/JSONObject;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move v8, v2

    invoke-direct {v6, v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONTokener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 106
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextClean()C

    move-result v4

    move v2, v4

    .line 108
    move v4, v2

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_0

    .line 109
    const/16 v4, 0x5d

    move v3, v4

    .line 115
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextClean()C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_2

    .line 141
    :goto_1
    return-void

    .line 110
    :cond_0
    move v4, v2

    const/16 v5, 0x28

    if-ne v4, v5, :cond_1

    .line 111
    const/16 v4, 0x29

    move v3, v4

    goto :goto_0

    .line 113
    :cond_1
    move-object v4, v1

    const-string v5, "A JSONArray text must start with \'[\'"

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 118
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 120
    :goto_2
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextClean()C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_3

    .line 121
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 122
    move-object v4, v0

    iget-object v4, v4, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 127
    :goto_3
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextClean()C

    move-result v4

    move v2, v4

    .line 128
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 143
    move-object v4, v1

    const-string v5, "Expected a \',\' or \']\'"

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 124
    :cond_3
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 125
    move-object v4, v0

    iget-object v4, v4, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_3

    .line 131
    :sswitch_0
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextClean()C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_4

    .line 132
    goto :goto_1

    .line 134
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONTokener;->back()V

    .line 135
    goto :goto_2

    .line 138
    :sswitch_1
    move v4, v3

    move v5, v2

    if-eq v4, v5, :cond_5

    .line 139
    move-object v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Character;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v3

    invoke-direct {v7, v8}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 141
    :cond_5
    goto/16 :goto_1

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 233
    move-object v3, v2

    if-nez v3, :cond_0

    .line 234
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 251
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

    .line 254
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 258
    :goto_0
    return v0

    .line 255
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

    .line 258
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 260
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

    const-string v6, "JSONArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a Boolean."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDouble(I)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 275
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

    .line 278
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 279
    new-instance v4, Lorg/json/JSONException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSONArray["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is not a number."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getInt(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 295
    move-object v1, p0

    move v2, p1

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 296
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

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_0
.end method

.method public getJSONArray(I)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 310
    move-object v3, v2

    instance-of v3, v3, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 311
    move-object v3, v2

    check-cast v3, Lorg/json/JSONArray;

    move-object v0, v3

    return-object v0

    .line 313
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

    const-string v6, "JSONArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a JSONArray."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getJSONObject(I)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 327
    move-object v3, v2

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 328
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    move-object v0, v3

    return-object v0

    .line 330
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

    const-string v6, "JSONArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a JSONObject."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getLong(I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 344
    move-object v1, p0

    move v2, p1

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 345
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

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-long v4, v4

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public isNull(I)Z
    .locals 5

    .prologue
    .line 367
    move-object v0, p0

    move v1, p1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 380
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v2, v5

    .line 381
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v5

    .line 383
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 384
    move v5, v4

    if-lez v5, :cond_0

    .line 385
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 387
    :cond_0
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 383
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 389
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 410
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public optBoolean(I)Z
    .locals 5

    .prologue
    .line 424
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public optBoolean(IZ)Z
    .locals 6

    .prologue
    .line 439
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    .line 441
    :goto_0
    return v0

    .line 440
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 441
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method public optDouble(I)D
    .locals 6

    .prologue
    .line 455
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public optDouble(ID)D
    .locals 8

    .prologue
    .line 470
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, v0

    move v6, v1

    :try_start_0
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    move-wide v0, v5

    .line 472
    :goto_0
    return-wide v0

    .line 471
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 472
    move-wide v5, v2

    move-wide v0, v5

    goto :goto_0
.end method

.method public optInt(I)I
    .locals 5

    .prologue
    .line 486
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public optInt(II)I
    .locals 6

    .prologue
    .line 500
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    .line 502
    :goto_0
    return v0

    .line 501
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 502
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method public optJSONArray(I)Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 514
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 515
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

.method public optJSONObject(I)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 528
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 529
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

.method public optLong(I)J
    .locals 6

    .prologue
    .line 542
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public optLong(IJ)J
    .locals 8

    .prologue
    .line 556
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, v0

    move v6, v1

    :try_start_0
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    move-wide v0, v5

    .line 558
    :goto_0
    return-wide v0

    .line 557
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 558
    move-wide v5, v2

    move-wide v0, v5

    goto :goto_0
.end method

.method public optString(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 572
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 585
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 586
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

.method public put(D)Lorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 622
    move-object v0, p0

    move-wide v1, p1

    new-instance v4, Ljava/lang/Double;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    move-object v3, v4

    .line 623
    move-object v4, v3

    invoke-static {v4}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 624
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    .line 625
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public put(I)Lorg/json/JSONArray;
    .locals 7

    .prologue
    .line 636
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    new-instance v3, Ljava/lang/Integer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    .line 637
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public put(ID)Lorg/json/JSONArray;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 719
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, v0

    move v5, v1

    new-instance v6, Ljava/lang/Double;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-wide v8, v2

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    .line 720
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public put(II)Lorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 734
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    new-instance v5, Ljava/lang/Integer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v2

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    .line 735
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public put(IJ)Lorg/json/JSONArray;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 749
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, v0

    move v5, v1

    new-instance v6, Ljava/lang/Long;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-wide v8, v2

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    .line 750
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public put(ILjava/lang/Object;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-static {v3}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 783
    move v3, v1

    if-gez v3, :cond_0

    .line 784
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 786
    :cond_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 787
    move-object v3, v0

    iget-object v3, v3, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 794
    :goto_0
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 789
    :cond_1
    :goto_1
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 790
    move-object v3, v0

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_1

    .line 792
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_0
.end method

.method public put(ILjava/util/Collection;)Lorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 703
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    new-instance v5, Lorg/json/JSONArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    .line 704
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public put(ILjava/util/Map;)Lorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 764
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    new-instance v5, Lorg/json/JSONObject;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    .line 765
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public put(IZ)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 688
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    .line 689
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 688
    :cond_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public put(J)Lorg/json/JSONArray;
    .locals 9

    .prologue
    .line 648
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    new-instance v4, Ljava/lang/Long;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    .line 649
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public put(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 673
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 674
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public put(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 7

    .prologue
    .line 609
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Lorg/json/JSONArray;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    .line 610
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public put(Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 7

    .prologue
    .line 660
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    .line 661
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public put(Z)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 597
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    .line 598
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 597
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public toJSONObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;
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

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 809
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 815
    :goto_0
    return-object v0

    .line 811
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v4

    .line 812
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 813
    move-object v4, v2

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 812
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 815
    :cond_2
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 832
    move-object v0, p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 834
    :goto_0
    return-object v0

    .line 833
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 834
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 851
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 866
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    move v3, v8

    .line 867
    move v8, v3

    if-nez v8, :cond_0

    .line 868
    const-string v8, "[]"

    move-object v0, v8

    .line 894
    :goto_0
    return-object v0

    .line 871
    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "["

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v8

    .line 872
    move v8, v3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 873
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move v10, v1

    move v11, v2

    invoke-static {v9, v10, v11}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 893
    :cond_1
    move-object v8, v5

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 894
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 876
    :cond_2
    move v8, v2

    move v9, v1

    add-int/2addr v8, v9

    move v6, v8

    .line 877
    move-object v8, v5

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 878
    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_5

    .line 879
    move v8, v4

    if-lez v8, :cond_3

    .line 880
    move-object v8, v5

    const-string v9, ",\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 882
    :cond_3
    const/4 v8, 0x0

    move v7, v8

    :goto_2
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_4

    .line 883
    move-object v8, v5

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 882
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 885
    :cond_4
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move v10, v1

    move v11, v6

    invoke-static {v9, v10, v11}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 878
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 888
    :cond_5
    move-object v8, v5

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 889
    const/4 v8, 0x0

    move v4, v8

    :goto_3
    move v8, v4

    move v9, v2

    if-ge v8, v9, :cond_1

    .line 890
    move-object v8, v5

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 889
    add-int/lit8 v4, v4, 0x1

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
    .line 909
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move v2, v6

    .line 910
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v3, v6

    .line 912
    move-object v6, v1

    const/16 v7, 0x5b

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(I)V

    .line 914
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    .line 915
    move v6, v2

    if-eqz v6, :cond_0

    .line 916
    move-object v6, v1

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(I)V

    .line 918
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 919
    move-object v6, v5

    instance-of v6, v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_1

    .line 920
    move-object v6, v5

    check-cast v6, Lorg/json/JSONObject;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v6

    .line 926
    :goto_1
    const/4 v6, 0x1

    move v2, v6

    .line 914
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 921
    :cond_1
    move-object v6, v5

    instance-of v6, v6, Lorg/json/JSONArray;

    if-eqz v6, :cond_2

    .line 922
    move-object v6, v5

    check-cast v6, Lorg/json/JSONArray;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v6

    goto :goto_1

    .line 924
    :cond_2
    move-object v6, v1

    move-object v7, v5

    invoke-static {v7}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 930
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 931
    new-instance v6, Lorg/json/JSONException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 928
    :cond_3
    move-object v6, v1

    const/16 v7, 0x5d

    :try_start_1
    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 929
    move-object v6, v1

    move-object v0, v6

    return-object v0
.end method
