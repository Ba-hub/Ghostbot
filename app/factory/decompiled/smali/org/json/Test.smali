.class public Lorg/json/Test;
.super Ljava/lang/Object;
.source "Test.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 24

    .prologue
    .line 72
    move-object/from16 v1, p0

    new-instance v16, Lorg/json/Test$1Obj;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "A beany object"

    const-wide/high16 v19, 0x4045000000000000L    # 42.0

    const/16 v21, 0x1

    invoke-direct/range {v17 .. v21}, Lorg/json/Test$1Obj;-><init>(Ljava/lang/String;DZ)V

    move-object/from16 v7, v16

    .line 75
    :try_start_0
    const-string v16, "<![CDATA[This is a collection of test patterns and examples for org.json.]]>  Ignore the stuff past the end.  "

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 76
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    const-string v16, "{     \"list of lists\" : [         [1, 2, 3],         [4, 5, 6],     ] }"

    move-object/from16 v6, v16

    .line 79
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v6

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 80
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    const-string v16, "<recipe name=\"bread\" prep_time=\"5 mins\" cook_time=\"3 hours\"> <title>Basic bread</title> <ingredient amount=\"8\" unit=\"dL\">Flour</ingredient> <ingredient amount=\"10\" unit=\"grams\">Yeast</ingredient> <ingredient amount=\"4\" unit=\"dL\" state=\"warm\">Water</ingredient> <ingredient amount=\"1\" unit=\"teaspoon\">Salt</ingredient> <instructions> <step>Mix all ingredients together.</step> <step>Knead thoroughly.</step> <step>Cover with a cloth, and leave for one hour in warm room.</step> <step>Knead again.</step> <step>Place in a bread baking tin.</step> <step>Cover with a cloth, and leave for one hour in warm room.</step> <step>Bake in the oven at 180(degrees)C for 30 minutes.</step> </instructions> </recipe> "

    move-object/from16 v6, v16

    .line 84
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 85
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintStream;->println()V

    .line 88
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/JSONML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 89
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintStream;->println()V

    .line 93
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v3, v16

    .line 94
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintStream;->println()V

    .line 98
    const-string v16, "<div id=\"demo\" class=\"JSONML\"><p>JSONML is a transformation between <b>JSON</b> and <b>XML</b> that preserves ordering of document features.</p><p>JSONML can work with JSON arrays or JSON objects.</p><p>Three<br/>little<br/>words</p></div>"

    move-object/from16 v6, v16

    .line 99
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/JSONML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 100
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintStream;->println()V

    .line 104
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v3, v16

    .line 105
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintStream;->println()V

    .line 109
    const-string v16, "<person created=\"2006-11-11T19:23\" modified=\"2006-12-31T23:59\">\n <firstName>Robert</firstName>\n <lastName>Smith</lastName>\n <address type=\"home\">\n <street>12345 Sixth Ave</street>\n <city>Anytown</city>\n <state>CA</state>\n <postalCode>98765-4321</postalCode>\n </address>\n </person>"

    move-object/from16 v6, v16

    .line 110
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 111
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v7

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/Object;)V

    move-object/from16 v4, v16

    .line 114
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    const-string v16, "{ \"entity\": { \"imageURL\": \"\", \"name\": \"IXXXXXXXXXXXXX\", \"id\": 12336, \"ratingCount\": null, \"averageRating\": null } }"

    move-object/from16 v6, v16

    .line 117
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v6

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 118
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    new-instance v16, Lorg/json/JSONStringer;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONStringer;-><init>()V

    move-object/from16 v5, v16

    .line 121
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->object()Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "single"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "MARIE HAA\'S"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "Johnny"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "MARIE HAA\\\'S"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "foo"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "bar"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "baz"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONWriter;->object()Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "quux"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "Thanks, Josh!"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "obj keys"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    move-object/from16 v17, v7

    invoke-static/range {v17 .. v17}, Lorg/json/JSONObject;->getNames(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v6, v16

    .line 140
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Lorg/json/JSONStringer;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONStringer;->object()Lorg/json/JSONWriter;

    move-result-object v17

    const-string v18, "a"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v17

    const-string v18, "b"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    new-instance v16, Lorg/json/JSONStringer;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONStringer;-><init>()V

    move-object/from16 v5, v16

    .line 156
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->array()Lorg/json/JSONWriter;

    move-result-object v16

    .line 157
    move-object/from16 v16, v5

    const-wide/16 v17, 0x1

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONWriter;

    move-result-object v16

    .line 158
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->array()Lorg/json/JSONWriter;

    move-result-object v16

    .line 159
    move-object/from16 v16, v5

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v16

    .line 160
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->array()Lorg/json/JSONWriter;

    move-result-object v16

    .line 161
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->object()Lorg/json/JSONWriter;

    move-result-object v16

    .line 162
    move-object/from16 v16, v5

    const-string v17, "empty-array"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v16

    .line 163
    move-object/from16 v16, v5

    const-string v17, "answer"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    const-wide/16 v17, 0x2a

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONWriter;->value(J)Lorg/json/JSONWriter;

    move-result-object v16

    .line 164
    move-object/from16 v16, v5

    const-string v17, "null"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v16

    .line 165
    move-object/from16 v16, v5

    const-string v17, "false"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->value(Z)Lorg/json/JSONWriter;

    move-result-object v16

    .line 166
    move-object/from16 v16, v5

    const-string v17, "true"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->value(Z)Lorg/json/JSONWriter;

    move-result-object v16

    .line 167
    move-object/from16 v16, v5

    const-string v17, "big"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    const-wide v17, 0x53e27ed9d50e89b3L    # 1.23456789E96

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONWriter;->value(D)Lorg/json/JSONWriter;

    move-result-object v16

    .line 168
    move-object/from16 v16, v5

    const-string v17, "small"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    const-wide v17, 0x2f576be43f1e4b54L    # 1.23456789E-80

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONWriter;->value(D)Lorg/json/JSONWriter;

    move-result-object v16

    .line 169
    move-object/from16 v16, v5

    const-string v17, "empty-object"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONWriter;->object()Lorg/json/JSONWriter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v16

    .line 170
    move-object/from16 v16, v5

    const-string v17, "long"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    .line 171
    move-object/from16 v16, v5

    const-wide v17, 0x7fffffffffffffffL

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONWriter;

    move-result-object v16

    .line 172
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONWriter;

    move-result-object v16

    .line 173
    move-object/from16 v16, v5

    const-string v17, "two"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v16

    .line 174
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONWriter;

    move-result-object v16

    .line 175
    move-object/from16 v16, v5

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONWriter;

    move-result-object v16

    .line 176
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONWriter;

    move-result-object v16

    .line 177
    move-object/from16 v16, v5

    const-wide v17, 0x4058a66666666666L    # 98.6

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONWriter;

    move-result-object v16

    .line 178
    move-object/from16 v16, v5

    const-wide/high16 v17, -0x3fa7000000000000L    # -100.0

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONWriter;

    move-result-object v16

    .line 179
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->object()Lorg/json/JSONWriter;

    move-result-object v16

    .line 180
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONWriter;

    move-result-object v16

    .line 181
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->object()Lorg/json/JSONWriter;

    move-result-object v16

    .line 182
    move-object/from16 v16, v5

    const-string v17, "one"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    .line 183
    move-object/from16 v16, v5

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONWriter;

    move-result-object v16

    .line 184
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONWriter;

    move-result-object v16

    .line 185
    move-object/from16 v16, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v16

    .line 186
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONWriter;

    move-result-object v16

    .line 187
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Lorg/json/JSONArray;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    move-object/from16 v8, v16

    .line 192
    new-instance v16, Lorg/json/JSONArray;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object/from16 v9, v16

    .line 193
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x0

    const-string v19, "aString"

    aput-object v19, v17, v18

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x1

    const-string v19, "aNumber"

    aput-object v19, v17, v18

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x2

    const-string v19, "aBoolean"

    aput-object v19, v17, v18

    move-object/from16 v10, v16

    .line 196
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    invoke-direct/range {v17 .. v19}, Lorg/json/JSONObject;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 197
    move-object/from16 v16, v4

    const-string v17, "Testing JSONString interface"

    move-object/from16 v18, v7

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 198
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "{slashes: \'///\', closetag: \'</script>\', backslash:\'\\\\\', ei: {quotes: \'\"\\\'\'},eo: {a: \'\"quoted\"\', b:\"don\'t\"}, quotes: [\"\'\", \'\"\']}"

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 201
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "{foo: [true, false,9876543210,    0.0, 1.00000001,  1.000000000001, 1.00000000000000001, .00000000000000001, 2.00, 0.1, 2e100, -32,[],{}, \"string\"],   to   : null, op : \'Good\',ten:10} postfix comment"

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 210
    move-object/from16 v16, v4

    const-string v17, "String"

    const-string v18, "98.6"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 211
    move-object/from16 v16, v4

    const-string v17, "JSONObject"

    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 212
    move-object/from16 v16, v4

    const-string v17, "JSONArray"

    new-instance v18, Lorg/json/JSONArray;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 213
    move-object/from16 v16, v4

    const-string v17, "int"

    const/16 v18, 0x39

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v16

    .line 214
    move-object/from16 v16, v4

    const-string v17, "double"

    const-wide v18, 0x45f8ee90ff6c373eL    # 1.2345678901234568E29

    invoke-virtual/range {v16 .. v19}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v16

    .line 215
    move-object/from16 v16, v4

    const-string v17, "true"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v16

    .line 216
    move-object/from16 v16, v4

    const-string v17, "false"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v16

    .line 217
    move-object/from16 v16, v4

    const-string v17, "null"

    sget-object v18, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 218
    move-object/from16 v16, v4

    const-string v17, "bool"

    const-string v18, "true"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 219
    move-object/from16 v16, v4

    const-string v17, "zero"

    const-wide/high16 v18, -0x8000000000000000L

    invoke-virtual/range {v16 .. v19}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v16

    .line 220
    move-object/from16 v16, v4

    const-string v17, "\\u2028"

    const-string v18, "\u2028"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 221
    move-object/from16 v16, v4

    const-string v17, "\\u2029"

    const-string v18, "\u2029"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 222
    move-object/from16 v16, v4

    const-string v17, "foo"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v3, v16

    .line 223
    move-object/from16 v16, v3

    const/16 v17, 0x29a

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v16

    .line 224
    move-object/from16 v16, v3

    const-wide v17, 0x409f47f5c28f5c29L    # 2001.99

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v16

    .line 225
    move-object/from16 v16, v3

    const-string v17, "so \"fine\"."

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v16

    .line 226
    move-object/from16 v16, v3

    const-string v17, "so <fine>."

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v16

    .line 227
    move-object/from16 v16, v3

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move-result-object v16

    .line 228
    move-object/from16 v16, v3

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move-result-object v16

    .line 229
    move-object/from16 v16, v3

    new-instance v17, Lorg/json/JSONArray;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v16

    .line 230
    move-object/from16 v16, v3

    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v16

    .line 231
    move-object/from16 v16, v4

    const-string v17, "keys"

    move-object/from16 v18, v4

    invoke-static/range {v18 .. v18}, Lorg/json/JSONObject;->getNames(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 232
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "String: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "String"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  bool: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "bool"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    to: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "to"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  true: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "true"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "   foo: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "foo"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    op: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "op"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "   ten: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "ten"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  oops: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "oops"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    const-string v16, "<xml one = 1 two=\' \"2\" \'><five></five>First \t&lt;content&gt;<five></five> This is \"content\". <three>  3  </three>JSON does not preserve the sequencing of elements and contents.<three>  III  </three>  <three>  T H R E E</three><four/>Content text is an implied structure in XML. <six content=\"6\"/>JSON does not have implied structure:<seven>7</seven>everything is explicit.<![CDATA[CDATA blocks<are><supported>!]]></xml>"

    move-object/from16 v6, v16

    .line 245
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 246
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v9, v16

    .line 251
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v9

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v9

    invoke-static/range {v17 .. v17}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    const-string v16, "<xml do=\'0\'>uno<a re=\'1\' mi=\'2\'>dos<b fa=\'3\'/>tres<c>true</c>quatro</a>cinqo<d>seis<e/></d></xml>"

    move-object/from16 v6, v16

    .line 256
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v9, v16

    .line 257
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v9

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v9

    invoke-static/range {v17 .. v17}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    const-string v16, "<mapping><empty/>   <class name = \"Customer\">      <field name = \"ID\" type = \"string\">         <bind-xml name=\"ID\" node=\"attribute\"/>      </field>      <field name = \"FirstName\" type = \"FirstName\"/>      <field name = \"MI\" type = \"MI\"/>      <field name = \"LastName\" type = \"LastName\"/>   </class>   <class name = \"FirstName\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class>   <class name = \"MI\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class>   <class name = \"LastName\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class></mapping>"

    move-object/from16 v6, v16

    .line 262
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 264
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v9, v16

    .line 268
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v9

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v9

    invoke-static/range {v17 .. v17}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    const-string v16, "<?xml version=\"1.0\" ?><Book Author=\"Anonymous\"><Title>Sample Book</Title><Chapter id=\"1\">This is chapter 1. It is not very long or interesting.</Chapter><Chapter id=\"2\">This is chapter 2. Although it is longer than chapter 1, it is not any more interesting.</Chapter></Book>"

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 273
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    const-string v16, "<!DOCTYPE bCard \'http://www.cs.caltech.edu/~adam/schemas/bCard\'><bCard><?xml default bCard        firstname = \'\'        lastname  = \'\' company   = \'\' email = \'\' homepage  = \'\'?><bCard        firstname = \'Rohit\'        lastname  = \'Khare\'        company   = \'MCI\'        email     = \'khare@mci.net\'        homepage  = \'http://pest.w3.org/\'/><bCard        firstname = \'Adam\'        lastname  = \'Rifkin\'        company   = \'Caltech Infospheres Project\'        email     = \'adam@cs.caltech.edu\'        homepage  = \'http://www.cs.caltech.edu/~adam/\'/></bCard>"

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 278
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    const-string v16, "<?xml version=\"1.0\"?><customer>    <firstName>        <text>Fred</text>    </firstName>    <ID>fbs0001</ID>    <lastName> <text>Scerbo</text>    </lastName>    <MI>        <text>B</text>    </MI></customer>"

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 283
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    const-string v16, "<!ENTITY tp-address PUBLIC \'-//ABC University::Special Collections Library//TEXT (titlepage: name and address)//EN\' \'tpspcoll.sgm\'><list type=\'simple\'><head>Repository Address </head><item>Special Collections Library</item><item>ABC University</item><item>Main Library, 40 Circle Drive</item><item>Ourtown, Pennsylvania</item><item>17654 USA</item></list>"

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 288
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 290
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    const-string v16, "<test intertag status=ok><empty/>deluxe<blip sweet=true>&amp;&quot;toot&quot;&toot;&#x41;</blip><x>eks</x><w>bonus</w><w>bonus2</w></test>"

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 293
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    const-string v16, "GET / HTTP/1.0\nAccept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/vnd.ms-powerpoint, application/vnd.ms-excel, application/msword, */*\nAccept-Language: en-us\nUser-Agent: Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90; T312461; Q312461)\nHost: www.nokko.com\nConnection: keep-alive\nAccept-encoding: gzip, deflate\n"

    invoke-static/range {v16 .. v16}, Lorg/json/HTTP;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 298
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/HTTP;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    const-string v16, "HTTP/1.1 200 Oki Doki\nDate: Sun, 26 May 2002 17:38:52 GMT\nServer: Apache/1.3.23 (Unix) mod_perl/1.26\nKeep-Alive: timeout=15, max=100\nConnection: Keep-Alive\nTransfer-Encoding: chunked\nContent-Type: text/html\n"

    invoke-static/range {v16 .. v16}, Lorg/json/HTTP;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 303
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/HTTP;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "{nix: null, nux: false, null: \'null\', \'Request-URI\': \'/\', Method: \'GET\', \'HTTP-Version\': \'HTTP/1.0\'}"

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 308
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isNull: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "nix"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "   has: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "nix"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/HTTP;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    const-string v16, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>\n\n<SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsi=\"http://www.w3.org/1999/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/1999/XMLSchema\"><SOAP-ENV:Body><ns1:doGoogleSearch xmlns:ns1=\"urn:GoogleSearch\" SOAP-ENV:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><key xsi:type=\"xsd:string\">GOOGLEKEY</key> <q xsi:type=\"xsd:string\">\'+search+\'</q> <start xsi:type=\"xsd:int\">0</start> <maxResults xsi:type=\"xsd:int\">10</maxResults> <filter xsi:type=\"xsd:boolean\">true</filter> <restrict xsi:type=\"xsd:string\"></restrict> <safeSearch xsi:type=\"xsd:boolean\">false</safeSearch> <lr xsi:type=\"xsd:string\"></lr> <ie xsi:type=\"xsd:string\">latin1</ie> <oe xsi:type=\"xsd:string\">latin1</oe></ns1:doGoogleSearch></SOAP-ENV:Body></SOAP-ENV:Envelope>"

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 334
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "{Envelope: {Body: {\"ns1:doGoogleSearch\": {oe: \"latin1\", filter: true, q: \"\'+search+\'\", key: \"GOOGLEKEY\", maxResults: 10, \"SOAP-ENV:encodingStyle\": \"http://schemas.xmlsoap.org/soap/encoding/\", start: 0, ie: \"latin1\", safeSearch:false, \"xmlns:ns1\": \"urn:GoogleSearch\"}}}}"

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 339
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    const-string v16, "  f%oo = b+l=ah  ; o;n%40e = t.wo "

    invoke-static/range {v16 .. v16}, Lorg/json/CookieList;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 344
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/CookieList;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    const-string v16, "f%oo=blah; secure ;expires = April 24, 2002"

    invoke-static/range {v16 .. v16}, Lorg/json/Cookie;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 349
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/Cookie;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "{script: \'It is not allowed in HTML to send a close script tag in a string<script>because it confuses browsers</script>so we insert a backslash before the /\'}"

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 354
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    new-instance v16, Lorg/json/JSONTokener;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "{op:\'test\', to:\'session\', pre:1}{op:\'test\', to:\'session\', pre:2}"

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, v16

    .line 358
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v11

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    move-object/from16 v4, v16

    .line 359
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "pre: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "pre"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    move-object/from16 v16, v11

    const/16 v17, 0x7b

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONTokener;->skipTo(C)C

    move-result v16

    move/from16 v12, v16

    .line 362
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move/from16 v17, v12

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(I)V

    .line 363
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v11

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    move-object/from16 v4, v16

    .line 364
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    const-string v16, "No quotes, \'Single Quotes\', \"Double Quotes\"\n1,\'2\',\"3\"\n,\'It is \"good,\"\', \"It works.\"\n\n"

    invoke-static/range {v16 .. v16}, Lorg/json/CDL;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v3, v16

    .line 369
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lorg/json/CDL;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    new-instance v16, Lorg/json/JSONArray;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, " [\"<escape>\", next is an implied null , , ok,] "

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v16

    .line 375
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "{ fun => with non-standard forms ; forgiving => This package can be used to parse formats that are similar to but not stricting conforming to JSON; why=To make it easier to migrate existing data to JSON,one = [[1.00]]; uno=[[{1=>1}]];\'+\':+6e66 ;pluses=+++;empty = \'\' , \'double\':0.666,true: TRUE, false: FALSE, null=NULL;[true] = [[!,@;*]]; string=>  o. k. ; \r oct=0666; hex=0x666; dec=666; o=0999; noh=0x0x}"

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 381
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    move-object/from16 v16, v4

    const-string v17, "true"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v16, v4

    const-string v17, "false"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 384
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "It\'s all good"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    :cond_0
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v4

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x0

    const-string v22, "dec"

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x1

    const-string v22, "oct"

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x2

    const-string v22, "hex"

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x3

    const-string v22, "missing"

    aput-object v22, v20, v21

    invoke-direct/range {v17 .. v19}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 389
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 391
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Lorg/json/JSONStringer;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONStringer;->array()Lorg/json/JSONWriter;

    move-result-object v17

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v17

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 394
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "{string: \"98.6\", long: 2147483648, int: 2147483647, longer: 9223372036854775807, double: 9223372036854775808}"

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 395
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "\ngetInt"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 398
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "int    "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "int"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 399
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "long   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "long"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "longer "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "longer"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "double "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "double"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "string "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "string"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "\ngetLong"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 405
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "int    "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "int"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "long   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "long"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 407
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "longer "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "longer"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "double "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "double"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "string "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "string"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "\ngetDouble"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 412
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "int    "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "int"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 413
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "long   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "long"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "longer "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "longer"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 415
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "double "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "double"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "string "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    const-string v19, "string"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    move-object/from16 v16, v4

    const-string v17, "good sized"

    const-wide v18, 0x7fffffffffffffffL

    invoke-virtual/range {v16 .. v19}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v16

    .line 419
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    new-instance v16, Lorg/json/JSONArray;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "[2147483647, 2147483648, 9223372036854775807, 9223372036854775808]"

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v16

    .line 422
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "\nKeys: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 425
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v2, v16

    .line 426
    :goto_0
    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 427
    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v6, v16

    .line 428
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_1
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "\naccumulate: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v4, v16

    .line 434
    move-object/from16 v16, v4

    const-string v17, "stooge"

    const-string v18, "Curly"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 435
    move-object/from16 v16, v4

    const-string v17, "stooge"

    const-string v18, "Larry"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 436
    move-object/from16 v16, v4

    const-string v17, "stooge"

    const-string v18, "Moe"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 437
    move-object/from16 v16, v4

    const-string v17, "stooge"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v3, v16

    .line 438
    move-object/from16 v16, v3

    const/16 v17, 0x5

    const-string v18, "Shemp"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v16

    .line 439
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "\nwrite:"

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    new-instance v18, Ljava/io/StringWriter;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    invoke-direct/range {v19 .. v19}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 444
    const-string v16, "<xml empty><a></a><a>1</a><a>22</a><a>333</a></xml>"

    move-object/from16 v6, v16

    .line 445
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 446
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 449
    const-string v16, "<book><chapter>Content of the first chapter</chapter><chapter>Content of the second chapter      <chapter>Content of the first subchapter</chapter>      <chapter>Content of the second subchapter</chapter></chapter><chapter>Third Chapter</chapter></book>"

    move-object/from16 v6, v16

    .line 450
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 451
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v3, v16

    .line 455
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 458
    const/16 v16, 0x0

    move-object/from16 v13, v16

    .line 459
    const/16 v16, 0x0

    move-object/from16 v14, v16

    .line 461
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v14

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v4, v16

    .line 462
    new-instance v16, Lorg/json/JSONArray;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v13

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object/from16 v3, v16

    .line 463
    move-object/from16 v16, v4

    const-string v17, "stooge"

    const-string v18, "Joe DeRita"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 464
    move-object/from16 v16, v4

    const-string v17, "stooge"

    const-string v18, "Shemp"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 465
    move-object/from16 v16, v4

    const-string v17, "stooges"

    const-string v18, "Curly"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 466
    move-object/from16 v16, v4

    const-string v17, "stooges"

    const-string v18, "Larry"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 467
    move-object/from16 v16, v4

    const-string v17, "stooges"

    const-string v18, "Moe"

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 468
    move-object/from16 v16, v4

    const-string v17, "stoogearray"

    move-object/from16 v18, v4

    const-string v19, "stooges"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 469
    move-object/from16 v16, v4

    const-string v17, "map"

    move-object/from16 v18, v14

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v16

    .line 470
    move-object/from16 v16, v4

    const-string v17, "collection"

    move-object/from16 v18, v13

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v16

    .line 471
    move-object/from16 v16, v4

    const-string v17, "array"

    move-object/from16 v18, v3

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v16

    .line 472
    move-object/from16 v16, v3

    move-object/from16 v17, v14

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->put(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v16

    .line 473
    move-object/from16 v16, v3

    move-object/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->put(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v16

    .line 474
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 476
    const-string v16, "{plist=Apple; AnimalSmells = { pig = piggish; lamb = lambish; worm = wormy; }; AnimalSounds = { pig = oink; lamb = baa; worm = baa;  Lisa = \"Why is the worm talking like a lamb?\" } ; AnimalColors = { pig = pink; lamb = black; worm = pink; } } "

    move-object/from16 v6, v16

    .line 477
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v6

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 478
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 480
    const-string v16, " (\"San Francisco\", \"New York\", \"Seoul\", \"London\", \"Seattle\", \"Shanghai\")"

    move-object/from16 v6, v16

    .line 481
    new-instance v16, Lorg/json/JSONArray;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v6

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v16

    .line 482
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 484
    const-string v16, "<a ichi=\'1\' ni=\'2\'><b>The content of b</b> and <c san=\'3\'>The content of c</c><d>do</d><e></e><d>re</d><f/><d>mi</d></a>"

    move-object/from16 v6, v16

    .line 485
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v4, v16

    .line 487
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v9, v16

    .line 491
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v9

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v9

    invoke-static/range {v17 .. v17}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 496
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "\nTesting Exceptions: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 498
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 500
    :try_start_1
    new-instance v16, Lorg/json/JSONArray;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v3, v16

    .line 501
    move-object/from16 v16, v3

    const-wide/high16 v17, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v16

    .line 502
    move-object/from16 v16, v3

    const-wide/high16 v17, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual/range {v16 .. v18}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v16

    .line 503
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 507
    :goto_1
    :try_start_2
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 509
    :try_start_3
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const-string v18, "stooge"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/io/PrintStream;->println(D)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 513
    :goto_2
    :try_start_4
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 515
    :try_start_5
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const-string v18, "howard"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/io/PrintStream;->println(D)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 519
    :goto_3
    :try_start_6
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 521
    :try_start_7
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x0

    const-string v19, "howard"

    invoke-virtual/range {v17 .. v19}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 525
    :goto_4
    :try_start_8
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 527
    :try_start_9
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/io/PrintStream;->println(D)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 531
    :goto_5
    :try_start_a
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 533
    :try_start_b
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 537
    :goto_6
    :try_start_c
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 539
    :try_start_d
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual/range {v17 .. v19}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 543
    :goto_7
    :try_start_e
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 545
    :try_start_f
    const-string v16, "<a><b>    "

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    move-result-object v16

    move-object/from16 v4, v16

    .line 549
    :goto_8
    :try_start_10
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 551
    :try_start_11
    const-string v16, "<a></b>    "

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    move-result-object v16

    move-object/from16 v4, v16

    .line 555
    :goto_9
    :try_start_12
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 557
    :try_start_13
    const-string v16, "<a></a    "

    invoke-static/range {v16 .. v16}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    move-result-object v16

    move-object/from16 v4, v16

    .line 561
    :goto_a
    :try_start_14
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    .line 563
    :try_start_15
    new-instance v16, Lorg/json/JSONArray;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    new-instance v18, Ljava/lang/Object;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object/from16 v9, v16

    .line 564
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 569
    :goto_b
    :try_start_16
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    .line 571
    :try_start_17
    const-string v16, "[)"

    move-object/from16 v6, v16

    .line 572
    new-instance v16, Lorg/json/JSONArray;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v6

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v16

    .line 573
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    .line 578
    :goto_c
    :try_start_18
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1

    .line 580
    :try_start_19
    const-string v16, "<xml"

    move-object/from16 v6, v16

    .line 581
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v9, v16

    .line 582
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v9

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d

    .line 587
    :goto_d
    :try_start_1a
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1

    .line 589
    :try_start_1b
    const-string v16, "<right></wrong>"

    move-object/from16 v6, v16

    .line 590
    move-object/from16 v16, v6

    invoke-static/range {v16 .. v16}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v9, v16

    .line 591
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v9

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e

    .line 596
    :goto_e
    :try_start_1c
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1

    .line 598
    :try_start_1d
    const-string v16, "{\"koda\": true, \"koda\": true}"

    move-object/from16 v6, v16

    .line 599
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v6

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 600
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f

    .line 605
    :goto_f
    :try_start_1e
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1

    .line 607
    :try_start_1f
    new-instance v16, Lorg/json/JSONStringer;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONStringer;-><init>()V

    move-object/from16 v5, v16

    .line 608
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONStringer;->object()Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "bosanda"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "MARIE HAA\'S"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "bosanda"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v16

    const-string v17, "MARIE HAA\\\'S"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v6, v16

    .line 616
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v4

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_10

    .line 623
    :goto_10
    return-void

    .line 504
    :catch_0
    move-exception v16

    move-object/from16 v15, v16

    .line 505
    :try_start_20
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1

    goto/16 :goto_1

    .line 620
    :catch_1
    move-exception v16

    move-object/from16 v8, v16

    .line 621
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10

    .line 510
    :catch_2
    move-exception v16

    move-object/from16 v15, v16

    .line 511
    :try_start_21
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 516
    :catch_3
    move-exception v16

    move-object/from16 v15, v16

    .line 517
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 522
    :catch_4
    move-exception v16

    move-object/from16 v15, v16

    .line 523
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 528
    :catch_5
    move-exception v16

    move-object/from16 v15, v16

    .line 529
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 534
    :catch_6
    move-exception v16

    move-object/from16 v15, v16

    .line 535
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 540
    :catch_7
    move-exception v16

    move-object/from16 v15, v16

    .line 541
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 546
    :catch_8
    move-exception v16

    move-object/from16 v15, v16

    .line 547
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 552
    :catch_9
    move-exception v16

    move-object/from16 v15, v16

    .line 553
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 558
    :catch_a
    move-exception v16

    move-object/from16 v15, v16

    .line 559
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 565
    :catch_b
    move-exception v16

    move-object/from16 v15, v16

    .line 566
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 574
    :catch_c
    move-exception v16

    move-object/from16 v15, v16

    .line 575
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 583
    :catch_d
    move-exception v16

    move-object/from16 v15, v16

    .line 584
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 592
    :catch_e
    move-exception v16

    move-object/from16 v15, v16

    .line 593
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 601
    :catch_f
    move-exception v16

    move-object/from16 v15, v16

    .line 602
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 617
    :catch_10
    move-exception v16

    move-object/from16 v15, v16

    .line 618
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1

    goto/16 :goto_10

    .line 191
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method
