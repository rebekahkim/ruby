#Caesar Cipher

def Rotate(array, i)
	when array.rotate(i)
		array[i]
	end
	i += 1
end

alphabet = ('a'..'z').to_a

i = 1
#cipher_alphabet = Hash[alphabet.map{ |v| [v, Rotate(alphabet, i)] }]
cipher_alphabet = Hash[alphabet.collect{ |v| [v, Rotate(alphabet, i)] }]

#alphabet.each{|key, value| cipher_alphabet[key] = alphabet[value]}
puts cipher_alphabet


# encrypted_message = "yd q xebu yd jxu whekdt jxuhu bylut q xerryj. dej q dqijo, tyhjo, muj xebu, vybbut myjx jxu udti ev mehci qdt qd eepo icubb, deh ouj q tho, rqhu, iqdto xebu myjx dejxydw yd yj je iyj temd ed eh je uqj: yj mqi q xerryj-xebu, qdt jxqj cuqdi secvehj. yj xqt q fuhvusjbo hekdt teeh byau q fehjxebu, fqydjut whuud, myjx q ixydo oubbem rhqii ader yd jxu unqsj cyttbu. jxu teeh efudut ed je q jkru-ixqfut xqbb byau q jkddub: q luho secvehjqrbu jkddub myjxekj iceau, myjx fqdubbut mqbbi, qdt vbeehi jybut qdt sqhfujut, fhelytut myjx febyixut sxqyhi, qdt beji qdt beji ev fuwi veh xqji qdt seqji - jxu xerryj mqi vedt ev lyiyjehi. jxu jkddub mekdt ed qdt ed, weydw vqyhbo rkj dej gkyju ijhqywxj ydje jxu iytu ev jxu xybb - jxu xybb, qi qbb jxu fuefbu veh cqdo cybui hekdt sqbbut yj - qdt cqdo byjjbu hekdt teehi efudut ekj ev yj, vyhij ed edu iytu qdt jxud ed qdejxuh. de weydw kfijqyhi veh jxu xerryj: rutheeci, rqjxheeci, subbqhi, fqdjhyui (beji ev jxuiu), mqhtherui (xu xqt mxebu heeci tulejut je sbejxui), ayjsxudi, tydydw-heeci, qbb muhu ed jxu iqcu vbeeh, qdt ydtuut ed jxu iqcu fqiiqwu. jxu ruij heeci muhu qbb ed jxu buvj-xqdt iytu (weydw yd), veh jxuiu muhu jxu edbo edui je xqlu mydtemi, tuuf-iuj hekdt mydtemi beeaydw eluh xyi wqhtud qdt cuqtemi ruoedt, ibefydw temd je jxu hyluh."

# decoded_message

# i = 1

# until decoded_message['windows']
# 	cipher_alphabet.rotate(i)
# 	i += 1